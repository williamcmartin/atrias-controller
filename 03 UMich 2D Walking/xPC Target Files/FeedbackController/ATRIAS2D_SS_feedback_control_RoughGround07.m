function [u,y,dy,s_out,ds,stance_leg_next,pd] = ...
    ATRIAS2D_SS_feedback_control_RoughGround07(t,q,dq,D,H,G,B, ...
    theta_limits,h_alpha,poly_cor,kp,kd,qTdesired,pdCtrl, ...
    pdPlusFwdCtrl,L2fhCtrl,auto_swap,swap_cmd, ...
    stance_leg,scuff,s_mode,s_freq, stance_leg_manual, swap, swap_threshold)


% CMU Notes:
% ----------

% The coordinates are named q again but represent the q2d coordinates of
% the higher level function.

% q1 = BoomYaw
% q2 = BoomRoll
% q3 = BoomPitch

% q4 = BackJointR 
% q5 = FrontJointR
% q6 = BackGearR
% q7 = FrontGearR
% q8 = BackJointL 
% q9 = FrontJointL
% q10 = BackGearL
% q11 = FrontGearL


% -----------------
% Set Control Flags
% -----------------
 
% corrections with polycor 
correction = 1;




% --------------------------------
% Compute Actual Virtual Leg Angle
% --------------------------------

% vompute actual value of normalized virtual leg angle s, its velocity and Jacobian wrt q
[s,ds,th,dth,delta_theta,c, dsdq] = ATRIAS2D_SS_s(q,dq,theta_limits,stance_leg);


% % -----------------
% % Stand still at the beginning (10 seconds after motors start
% % -----------------
% if t<18
%     s_mode = 0;
%     swap = 3;
% end

% -----------------------------------------------------
% Override s If Control Not in Mode 2: "Actual s" (GUI)
% ------------------------------------------------==---

% not in "actual s" mode   
if s_mode ~= 2 
   
    % note: s_mode provided from GUI
    
    % assign s and ds from  functions defined in function s_value
    % (either fixed or time-based)
    [s, ds] = s_value(t, s_freq, s_mode);
 
end

% report generated s (output variable of this function)
s_out = s;



% --------------------------
% Compute Current Stance Leg
% --------------------------

% compute current stance leg 
stance_leg = compute_stance_leg(q, s, stance_leg, stance_leg_manual, swap, swap_threshold, t, s_freq, s_mode);

% output current stance leg for looping back as "current" stance leg in the
% next time step
stance_leg_next = stance_leg;



% ----------
% Saturate s
% ----------

% saturate s within [0,1]
s = min(1, s);
s = max(0, s);



% --------------------------
% Assign Virtual Constraints
% --------------------------

% note:
% the desired motions of the virtual degrees of freedom, leg angle and 
% leg splay, are stored in matrix h_alpha(s), expresing the virtual 
% holonomic constraints as 6 control points at different percentages of
% s to be used with the bezier funnction.
% 
% The bezier function generates, based on these control points and the
% current value of s the CURRENT desired position of the virtual degrees of
% freedom.
%
% The matrix h_alpha is provided from the file Data.mat. It has four rows,
% two per virtual degree of freedom with stance and swing parts each.
%
% h_alpha(1,:) = 6 control pts for right virtual leg angle in stance
% h_alpha(2,:) = 6 control pts for left virtual leg angle in swing
% h_alpha(3,:) = 6 control pts for right virtual leg splay in stance
% h_alpha(4,:) = 6 control pts for left virtual leg splay in swing



% ----------------------------------------------------------------
% Shuffling of Virtual Constraint Matrix for Left Leg Stance Phase
% ----------------------------------------------------------------

% preallocate memory for virtual constraint matrix
h_alpha_temp = zeros(4,6);

if stance_leg==0 
    % right stance
    h_alpha_temp = h_alpha;
else
    % left stance
    
    % right leg virtual angle becomes swing angle
    h_alpha_temp(1,:) = h_alpha(2,:); 
    
    % left leg virtual angle becomes stance angle
    h_alpha_temp(2,:) = h_alpha(1,:);
    
    % right leg virtual splay becomes swing splay
    h_alpha_temp(3,:) = h_alpha(4,:);
    
    % left leg virtual splay becomes stance splay
    h_alpha_temp(4,:) = h_alpha(3,:);
end



% ----------------
% Add Splay Offset 
% ----------------

% note: splay offset scuff shifts control points 3 and 4 of the current
%       swing leg; it avoids foot scuffing
%       variable scuff is provided in the GUI


if stance_leg==0 
    % right stance
    h_alpha_temp(4,:) = h_alpha_temp(4,:)+[0 0 scuff(1) scuff(2) 0 0];
else
    % left stance
    h_alpha_temp(3,:) = h_alpha_temp(3,:)+[0 0 scuff(1) scuff(2) 0 0];
end



% ----------------------------------------------
% Offset Virtual Leg Angle by Desired Trunk Lean
% ----------------------------------------------

% add trunk desired offset (provided in GUI)
h_alpha_temp(1:2,:) = h_alpha_temp(1:2,:) + qTdesired;



% -------------------------------------------------------
% Compute Current Positions of Virtual Degrees of Freedom
% -------------------------------------------------------

% compute current positions of virtual dofs
[h0,jacob_h0,jacob_jacobh0dq] = ATRIAS2D_Fdbk_Terms(q,dq,0);

% note: h0 is 4x1 vector with elements:
% h0 = [right leg angle; ...
%        left leg angle; ...
%       right leg splay; ...
%        left leg splay];
%
% further note: jscob_h0 is the current jacobian mapping joint coordinate
% velocities into velocities of the virtual dofs



% -----------------------------------------------------------
% Compute Position and Velocity Error of Current Virtual DOFs
% -----------------------------------------------------------

% compute position error 
y = h0 - bezier(h_alpha_temp, s);
% note: the current desired position is polled from Bezier interpolation of
% h_alpha_temp at the current normalized position s of the virtual stance leg
% angle

% compute error velocity dy = dy(q,s) = dh0/dq * dq - dbezier/ds * ds
dy = jacob_h0*dq - bezierd(h_alpha_temp,s)*ds;
% note: bezierd is bezier differentiated wrt to s 

d=beziera(h_alpha_temp, s)*(ds*ds);

% jacobian dy/dq relating changes in y to changes in q
jacob_h = jacob_h0 - bezierd(h_alpha_temp, s)*dsdq; % [4x11] - [4x1][1x11] = [4x11]
% note: the second term is from (dbezier/ds*ds/dq) *dq where the part in
% parentheses is the Jacobian mapping joint velocities into desired
% velocities of virtual constraints; 
%
% jacob_h relates changes in y = = h(q) = h0 - bezier to changes in q:
% dy = dh/dq *dq = dh0/dq *dq - dbezier/ds *ds/dq *dq
%                = (jacob_h0 -dbezier/ds*ds/q)*dq



% ----------------
% Correction Terms 
% ----------------

% NOT USED: correction flag set to zero by CMU

% the correction smoothes the torques when off the deired motion (HG
% believes)
if and(correction, (s < 1) )
     y=y-polyp(poly_cor,s);
     dy=dy-polyd(poly_cor,s)*ds;
     d=d+polya(poly_cor,s)*(ds*ds);
     jacob_h = jacob_h - polyd(poly_cor,s)*dsdq;
end




% -----------------------
% Compute Control Torques
% -----------------------

% Compute inverse mass matrix
D_inv = inv(D);

% compute dynamics decoupling matrix
DecoupMatrix=jacob_h*D_inv*B;  % [4x11][11x11][11x4] = [4x4]
% Note: the jacob_h term in this equation is dy/dq. It relates changes
% in y to changes in q.


% generate error proportional feedback gain matrix
Kp = diag([kp; kp]); 
% note: kp in this function consists of the first two values of kp 
% outside this function. The resulting gain matrix is [4x4] for right
% and left cirtual leg angle and leg splay

% STRANGE: h0 and thus y is sorted by angle (1:2) and splay (3:4)
% If kp1() is for angle and kp(2) for splay, Kp should be
% Kp = diag[ kp(1); kp(1); kp(2); kp(2) ]

% generate error velocity feedback gain matrix
Kd = diag([kd; kd]);

% compute PD-Feedback torques
pd = Kp*y+Kd*dy; 



% compute feedforard torques (torque to stay on constraint surface)
% Eq 9 in Ref1
% Note: Not being used in pure pd control


if s > 1 %not applicable if s is saturated: s in [0,1]
    
    % term dd(h_des)/ddtheta*dtheta^2 of Eq 9 in Ref1 for feeforward torque u*
    d = beziera(h_alpha_temp,s)*(ds*ds);

    L2fh=-jacob_h*D_inv*H+jacob_jacobh0dq*dq - d; %%%L2fh
    uBound=20*ones(4,1);
    vBound=diag([3 7 7 20])*ones(4,1);
else    
    % term dd(h_des)/dtheta^2*dtheta^2 of Eq 9 in Ref1 for feeforward torque u*
    d=beziera(h_alpha_temp, s)*(ds*ds);

    L2fh = -jacob_h*D_inv*H + jacob_jacobh0dq*dq - d; %%%L2fh
    uBound=20*ones(4,1);
    vBound=30*ones(4,1);
end

% Initialize 'u' since it is returned by this function
u = zeros(4,1);

% set control torque
if pdCtrl
    % feedback only
    u=DecoupMatrix\(-pd); % [4x4][4x1] = [4x1]

elseif pdPlusFwdCtrl
    
    % feedback and feedforard
    u=DecoupMatrix\(-L2fh-pd);

elseif L2fhCtrl
    
    % only feedforward
    u=DecoupMatrix\(-L2fh);
end


% Note on Computing the torque input:
% From EOM, we have in q-coords
% D*ddq + H = B*u  =>  u = (D^-1*B)^-1 * (ddq + D^-1*H)
%
% Now use the relationship btw y and q:
% dy = dy/dq *dq = dh/dq * dq
%
% Differentiating yields
% ddy = ddh/dq^2 *dq^2 + dh/dq * ddq  
% =>  ddq = (dh/dq)^-1 * (ddy - ddh/dq^2 *dq^2)
%
% Replacing this ddq in the first equation yields:
% u = (D^-1*B)^-1 * ((dh/dq)^-1 * (ddy - ddh/dq^2 *dq^2) + D^-1*H)
%   = (D^-1*B)^-1 * (dh/dq)^-1 * (ddy - ddh/dq^2 *dq^2 + dh/dq*D^-1*H)
%   = (dh/dq*D^-1*B)^-1 * (ddy - ddh/dq^2 *dq^2 + dh/dq*D^-1*H)
%
% The feedback component is
% u_fb = (dh/dq*D^-1*B)^-1 * ddy
%      = (dh/dq*D^-1*B)^-1 * (-Kp*y-Kd*dy)
% as the virtual torques u_virt = -Kp*y-Kd*dy generate the virtual
% accelerations ddy (Eq11) in Ref1
%
% The feedforward component is 
% u_ff = (dh/dq*D^-1*B)^-1 * (-ddh/dq^2 *dq^2 + dh/dq*D^-1*H)
% 
% Now somehow y=h0-bezier needs to be use to turn ddh/dq^2 into
% ddh0/dq^2*dq^2 plus ddh0/ds^2*ds^2; then the terms d = beziera and
% L2fh are clear.
%
% Important note: the inverse of dh/dq in the first term maps virtual
% torques onto actual torques!

return

end % function


function stance_leg = compute_stance_leg(q, s, stance_leg,  stance_leg_manual, swap, swap_threshold, t, s_freq, s_mode)

    % Keep track of previous s
    persistent last_s;
    if(isempty(last_s)) 
        last_s = 0;
    end
    
    % spring angles are give by the following coordinates
    % q4 = BackJointR and q6 = BackGearR for right back spring
    % q5 = FrontJointR and q7 = FrontGearR for right front spring
    % q8 = BackJointL and q10 = BackGearL for left back spring
    % q9 = FrontJointL and q11 = FrontGearL for left front spring
    
    % springAngles = [sp1R; sp2R; sp1L; sp2L]
	SpringAngles = [0 0 0 -1  0 1 0  0  0 0 0; ...
                    0 0 0  0 -1 0 1  0  0 0 0; ...
                    0 0 0  0  0 0 0 -1  0 1 0; ...
                    0 0 0  0  0 0 0  0 -1 0 1]*q;
                
    % resulting spring deflections            
    springDeflectionLS = [-1 1  0 0; ...
                           0 0 -1 1] * SpringAngles;
    
	% swap SpringDeflectionLS if needed such that springDeflectionLS =
	% [springDeflectionLS_Stance; springDeflectionLS_Swing]
	if stance_leg==1 % left stance
        springDeflectionLS = flipud(springDeflectionLS);
    end
    

    if swap==0 % Swap on "s"
        if last_s-s > 0.5 % Change in "s" is more than 50%  %s>swap_threshold(1)
            stance_leg = 1-stance_leg;
        end
    elseif swap==1 % Swap on springs and on "s"
        if s>swap_threshold(1) && springDeflectionLS(1)>swap_threshold(2)*pi/180 && springDeflectionLS(2)<swap_threshold(3)*pi/180
            stance_leg = 1-stance_leg;
        end
    elseif swap==2 % swap on springs
        if springDeflectionLS(1)>swap_threshold(2)*pi/180 && springDeflectionLS(2)<swap_threshold(3)*pi/180
            stance_leg = 1-stance_leg;
        end
    else % manual swap
        stance_leg = double(stance_leg_manual);
    end
    
    % Remember s value
    last_s = s;
end

% Sawtooth wave from 0 to 1 of period 2*pi 
function y = sawtooth(t)
    T = 2*pi;
    L = T / 2;
    y = 1/(2*L) * mod(t, 2*L);
end

% Returns s_value for time t
function [s, ds] = s_value(t,s_freq,s_mode)
    s = 0; ds = 0;
    if s_mode==0
        s = 0;
        ds = 0;
    elseif s_mode==1
        s = 0.5+0.5*sin(2*pi*s_freq*t);
        ds = 2*pi*s_freq*0.5*cos(2*pi*s_freq*t);
    elseif s_mode==3
        s = sawtooth(2*pi*s_freq*t);
        ds = s_freq;
    end
end
