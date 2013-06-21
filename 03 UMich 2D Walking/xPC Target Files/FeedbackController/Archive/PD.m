function [u,y,dy] = PD(q,dq,D,H,G,B,theta_limits,h_alpha,poly_cor,FlagGroundHeightTransition)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

%%%%
qT=q(1);  dqT=dq(1);
q1=q(2);  dq1=dq(2);
q2=q(3);  dq2=dq(3);
qgr1=q(4);  dqgr1=dq(4);
qgr2=q(5);  dqgr2=dq(5);
q1L=q(6);  dq1L=dq(6);
q2L=q(7);  dq2L=dq(7);
qgr1L=q(8);  dqgr1L=dq(8);
qgr2L=q(9);  dqgr2L=dq(9);


%%%%%%%%%%%%
[g mTotal L1 L2 L3 L4 m1 m2 m3 m4 Jcm1 Jcm2 Jcm3 Jcm4 ellzcm1 ...
         ellzcm2 ellzcm3 ellzcm4 ellycm1 ellycm2 ellycm3 ellycm4 LT mT ...
         JcmT  ellzcmT ellycmT K1 K2 Kd1 Kd2 Jrotor1 Jrotor2 Jgear1  ...
         Jgear2 R1  R2] = modelParametersAtrias_v03;

Jtorso = JcmT + mT*(ellzcmT)^2;

%%%%%%%%%%%%%

StanceControlParams=struct('KpLS',200,'KdLS',50,'SetPtLS',10*pi/180,'KpTorso',150,'KdTorso',50,'SetPtTorso',-1*pi/180,'Edes',273);
StanceControlParams.KdTorso = 2*0.9*sqrt(StanceControlParams.KpTorso/Jtorso)*Jtorso;
StanceControlParams.KdLS = 2*0.7*sqrt(StanceControlParams.KpLS/mTotal)*mTotal;

SwingControlParams=struct('KpLS',400,'KdLS',50,'SetPtLS',40*pi/180,'KpLA',50,'KdLA',50,'SetPtLA',0*pi/180,'Edes',273);
SwingControlParams.KdTLA = 2*0.9*sqrt(SwingControlParams.KpLA/Jgear1)*Jgear1;
%SwingControlParams.KdLS = 2*0.7*sqrt(SwingControlParams.KpLS/Jgear1)*Jgear1;

%%%%

[pT pHip p1 p2 p3 p4 p1L p2L p3L p4L pcm pcmT pcm1 pcm2 pcm3 pcm4 pcm1L pcm2L pcm3L pcm4L] =  PointsAtrias2D(q);

[vHip vcm J_cm dJ_cm] =  VelAccelAtrias2D(q,dq);

%%%%%%%

qLA=(q1+q2)/2;
dqLA=(dq1+dq2)/2;

qLS=(qgr2-qgr1);
dqLS=(dqgr2-dqgr1);

qLAL=(q1L+q2L)/2;
dqLAL=(dq1L+dq2L)/2;

qLSL=(qgr2L-qgr1L);
dqLSL=(dqgr2L-dqgr1L);


%%%%%%%%%%%%%%

%A=[.5 .5; -1 1]
invA=[ 1.0000   -0.5000;   1.0000    0.5000];


%%%%%%%%%%%%%%
y1=(StanceControlParams.SetPtLS-qLS); dy1=(0-dqLS);
if vcm(2)<-0.1
    uLSspring=0.5*StanceControlParams.KpLS*y1;
    uLSpower=0.5*StanceControlParams.KdLS*dy1;
else
    uLSpower=StanceControlParams.KdLS*dy1;
    uLSspring=StanceControlParams.KpLS*y1;
end
uLS=uLSpower+uLSspring;

y3=(StanceControlParams.SetPtTorso-qT);dy3=(0-dqT);
uTorso=StanceControlParams.KpTorso*y3+ StanceControlParams.KdTorso*dy3;

yStance=[y1;y3]; dyStance=[dy1;dy3];
uStance=invA*[-uTorso;uLS];

%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%


th1 = pi - (qLA + qT);  th2=pi -(qLAL + qT);
dth1 = - (dqLA + dqT);  dth2=-(dqLAL + dqT);

y2=th1+th2;dy2=dth1+dth2;
uLAL=SwingControlParams.KpLA*y2+SwingControlParams.KdLA*dy2;



alpha=.5;
if p4(1)<pcm(1)+0.15
    y4=(SwingControlParams.SetPtLS-qLSL); dy4=(0-dqLSL);
    uLSspringL=SwingControlParams.KpLS*y4;
    uLSpowerL=SwingControlParams.KdLS*dy4;
else
    y4=(StanceControlParams.SetPtLS-qLSL); dy4=(0-dqLSL);
    uLSspringL=alpha*SwingControlParams.KpLS*y4;
    uLSpowerL=alpha*SwingControlParams.KdLS*dy4;
end
uLSL=uLSpowerL+uLSspringL;


ySwing=[y2;y4]; dySwing=[dy2;dy4];
uSwing=invA*[uLAL;uLSL];


u=[uStance(1);uStance(2); ;uSwing(1);uSwing(2)];
y=[yStance(1);ySwing(1);yStance(2); ySwing(2)];
dy=[dyStance(1);dySwing(1);dyStance(2); dySwing(2)];

end

