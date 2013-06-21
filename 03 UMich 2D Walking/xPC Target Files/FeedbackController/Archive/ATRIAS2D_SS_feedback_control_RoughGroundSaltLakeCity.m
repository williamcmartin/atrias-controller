function [u,y,dy,D_inv]=ATRIAS2D_SS_feedback_control_RoughGroundSaltLakeCity(q,dq,D,H,G,B,theta_limits,h_alpha,poly_cor,FlagGroundHeightTransition)
%
%% Choices
[which_fdbk,which_subfdbk,correction,which_orbit,limit_s]=ATRIAS2D_SelectFeedbackOptions;
%
[kp, kd, qTdesired] = ATRIAS2D_FeedbackParams;
%
%% s
[s,ds,th,dth,delta_theta,c,dsdq]=ATRIAS2D_SS_s(q,dq,theta_limits);
if limit_s
    delta=0.02;  %torque goes negative when s becomes constant
    if s > 1+delta
        %h_alpha(3,end)=h_alpha(3,end)+5*pi/180;
        s=1+delta; ds=0; dsdq=0*dsdq;
        qT=q(1);
        h_alpha(1:2,end)=h_alpha(1:2,end)+(qT-qTdesired);
    elseif s<0 %-delta
        s=0; %ds=0;
    end
end
%% Compute terms in controller
D_inv=inv(D);
%
u = zeros(4,1);
y = zeros(4,1);
dy =zeros(4,1);
d = zeros(4,1);

[h0,jacob_h0,jacob_jacobh0dq]= ATRIAS2D_Fdbk_Terms(q,dq);
y=h0-bezier(h_alpha, s);
dy=jacob_h0*dq-bezierd(h_alpha,s)*ds;
d=beziera(h_alpha, s)*(ds*ds);
jacob_h = jacob_h0 - bezierd(h_alpha, s)*dsdq;
if and(correction, (s < 1) )
    y=y-polyp(poly_cor,s);
    dy=dy-polyd(poly_cor,s)*ds;
    d=d+polya(poly_cor,s)*(ds*ds);
    jacob_h = jacob_h - polyd(poly_cor,s)*dsdq;
end
%% Set up IO-Linearizing Controller
DecoupMatrix=jacob_h*D_inv*B;  %%LgLfh
% svd(DecoupMatrix)

%
Kp=diag([kp kp kp kp]);
Kd=diag([kd kd kd kd]);
pd = Kp*y+Kd*dy;
%
if s > 1
    L2fh=-jacob_h*D_inv*G+jacob_jacobh0dq*dq - d; %%%L2fh
    %u=5*DecoupMatrix\(-pd);
    uBound=3*ones(4,1);

else
    L2fh=-jacob_h*D_inv*H+jacob_jacobh0dq*dq - d; %%%L2fh
    uBound=20*ones(4,1);
end

u=DecoupMatrix\(-L2fh-pd);



if FlagGroundHeightTransition == 1 % damping step following impact
    u = u - 50*dq([2 3 6 7]);
elseif 0 %and(FlagGroundHeightTransition == 2, s<0.5) % remove jerkiness on transition
    uBound=5*ones(4,1);
end
% if s>1  % allow robot to collapse toward ground
%     uBound=4*ones(4,1);
% end
u=min(u,uBound);
u=max(u,-uBound);
return
