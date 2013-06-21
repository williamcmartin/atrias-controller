function [u,y,dy,D_inv]=ATRIAS2D_SS_feedback_control_RoughGround05(q,dq,D,H,G,B,theta_limits,h_alpha,poly_cor,FlagGroundHeightTransition)
%
%% Choices
[which_fdbk,which_subfdbk,correction,which_orbit,limit_s]=ATRIAS2D_SelectFeedbackOptions;
%
[kp, kd, qTdesired] = ATRIAS2D_FeedbackParams;
%
%% s
[s,ds,th,dth,delta_theta,c,dsdq]=ATRIAS2D_SS_s(q,dq,theta_limits);
if limit_s
    delta=0.02;  
    if s > 1+delta
        s=1+delta; ds=0; dsdq=0*dsdq;
        % as the body rotates about the foot, try to keep
        % the torso upright. 
        qT=q(1);
        h_alpha(1,end)=h_alpha(1,end)+(qT-qTdesired)-5*pi/180;
        % Move swing leg to a good position for contact.
        % Current value may be too far forward.
        h_alpha(2,end)=3.4934e+000; %+5*pi/180;
        % Make sure that you land on a bent knee so that
        % the robot can absorb the impact shock
        h_alpha(4,end)=h_alpha(4,end)-5*pi/180;
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
    L2fh=-jacob_h*D_inv*H+jacob_jacobh0dq*dq - d; %%%L2fh
    %uBound=diag([3 3 7 7])*ones(4,1);
    uBound=20*ones(4,1);
    vBound=diag([3 7 7 20])*ones(4,1);
    
else
    L2fh=-jacob_h*D_inv*H+jacob_jacobh0dq*dq - d; %%%L2fh
    uBound=20*ones(4,1);
    vBound=30*ones(4,1);
end

u=DecoupMatrix\(-L2fh-pd);


if FlagGroundHeightTransition == 1 % damping step following impact
    if 1
        u = u - diag([75 75 25 25])*dq([2 3 6 7]);
    else
        qT=q(1);  dqT=dq(1);
        q1=q(2);  dq1=dq(2);
        q2=q(3);  dq2=dq(3);
        qgr1=q(4);  dqgr1=dq(4);
        qgr2=q(5);  dqgr2=dq(5);
        q1L=q(6);  dq1L=dq(6);
        q2L=q(7);  dq2L=dq(7);
        qgr1L=q(8);  dqgr1L=dq(8);
        qgr2L=q(9);  dqgr2L=dq(9);
        
        qLS=(q2-q1);
        dqLS=(dq2-dq1);
        
        qLA=(q1+q2)/2;
        dqLA=(dq1+dq2)/2;
        
        qLAL=(q1L+q2L)/2;
        dqLAL=(dq1L+dq2L)/2;
        
        qLSL=(q2L-q1L);
        dqLSL=(dq2L-dq1L);
        
        
        %A=[.5 .5; -1 1]
        invA=[ 1.0000   -0.5000;   1.0000    0.5000];
        
        uDampLS=200*dqLS;
        uDampLA=75*dqLA;
        uDampStance=invA*[uDampLA;uDampLS];
        
        uDampSwing=invA*[50*dqLAL;50*dqLSL];
        
        uDamp=[uDampStance;uDampSwing];
        
        u=u-uDamp;
        
    end
elseif 0 %and(FlagGroundHeightTransition == 2, s<0.5) % remove jerkiness on transition
    uBound=5*ones(4,1);
end
% if s>1  % allow robot to collapse toward ground
%     uBound=4*ones(4,1);
% end

if 0
    u=min(u,uBound);
    u=max(u,-uBound);
    
else
    %%uBound=20*ones(4,1);%%%%%%%%%%????
    [g mTotal L1 L2 L3 L4 m1 m2 m3 m4 Jcm1 Jcm2 Jcm3 Jcm4 ellzcm1 ellzcm2 ellzcm3 ellzcm4 ellycm1 ellycm2 ellycm3 ellycm4 LT mT JcmT ...
        ellzcmT ellycmT K1 K2 Kd1 Kd2 Jrotor1 Jrotor2 Jgear1  Jgear2 R1  R2] = modelParametersAtrias_v03;
    SpringTorque1Stance=K1*(q(2)-q(4))+Kd1*(dq(2)-dq(4));
    SpringTorque2Stance=K2*(q(3)-q(5))+Kd2*(dq(3)-dq(5));
    SpringTorqueLSStance=SpringTorque2Stance-SpringTorque1Stance;
    %vBound=30*ones(4,1);
    A=[.5 .5; -1 1]; AA=[A 0*A; 0*A, A];
    v=AA*u;
    %v(2)=max(v(2),3);
    if (q(3)-q(2)) < 7*pi/180;
        v(2)=min(v(2),SpringTorqueLSStance-3);
    else
        v(2)=min(v(2),SpringTorqueLSStance-15);
        mu=abs(v(1)/v(2));
%         if mu > 0.9
%             v(1)=v(1)*0.9/mu;
%             end
    end
    v=min(v,vBound);
    v=max(v,-vBound);
    invA=[ 1.0000   -0.5000;   1.0000    0.5000]; invAA=[invA 0*invA; 0*invA, invA];
    u=invAA*v;
    u=min(u,uBound);
    u=max(u,-uBound);
end




return
