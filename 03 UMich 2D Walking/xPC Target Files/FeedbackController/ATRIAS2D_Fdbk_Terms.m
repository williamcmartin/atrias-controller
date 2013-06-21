function [h0,jacob_h0,jacob_jacobh0dq]= ATRIAS2D_Fdbk_Terms(q,dq,leg)
%%%%%%  ATRIAS2D_Fdbk_Terms.m
%%%%  05-Sep-2012 18:17:02
%%%%
%%%% Authors(s): Grizzle
%%%%
%%%%
%%%% Model NOTATION: Spong and Vidyasagar, page 142, Eq. (6.3.12)
%%%%                 D(q)ddq + C(q,dq)*dq + G(q) = B*tau
%%%%
%%%%
[g mTotal L1 L2 L3 L4 m1 m2 m3 m4 Jcm1 Jcm2 Jcm3 Jcm4 ellzcm1 ...
         ellzcm2 ellzcm3 ellzcm4 ellycm1 ellycm2 ellycm3 ellycm4 LT mT ...
         JcmT ellzcmT ellycmT mH JcmH K1 K2 Kd1 Kd2 Jrotor1 Jrotor2 ...
         Jgear1  Jgear2 R1  R2] = modelParametersAtrias_v05;
%%%%
%%%%[g mTotal L1 L2 L3 L4 m1 m2 m3 m4 Jcm1 Jcm2 Jcm3 Jcm4 ellzcm1 ellzcm2 ellzcm3 ellzcm4 ellycm1 ellycm2 ellycm3 ellycm4 LT mT JcmT ellzcmT ellycmT mH JcmH K1 K2 Kd1 Kd2 Jrotor1 Jrotor2 Jgear1  Jgear2 R1  R2] = modelParametersAtrias_v05;
%%%%
if nargin < 3, leg=0; end
%%%%
yH=q(1);  dyH=dq(1);
zH=q(2);  dzH=dq(2);
qT=q(3);  dqT=dq(3);
q1=q(4);  dq1=dq(4);
q2=q(5);  dq2=dq(5);
qgr1=q(6);  dqgr1=dq(6);
qgr2=q(7);  dqgr2=dq(7);
q1L=q(8);  dq1L=dq(8);
q2L=q(9);  dq2L=dq(9);
qgr1L=q(10);  dqgr1L=dq(10);
qgr2L=q(11);  dqgr2L=dq(11);
%%%%
%%%%
h0=zeros(4,1);
if leg ==0
h0(1)=qgr1/2 + qgr2/2;
h0(2)=qgr1L/2 + qgr2L/2;
h0(3)=qgr2 - qgr1;
h0(4)=qgr2L - qgr1L;
elseif leg ==1
h0(1)=qgr1/2 + qgr2/2;
h0(2)=qgr1L/2 + qgr2L/2;
h0(3)=qgr2 - qgr1;
h0(4)=qgr2L - qgr1L;
end
%%%%
%%%%
jacob_h0=zeros(4,11);
if leg ==0
jacob_h0(1,6)=1/2;
jacob_h0(1,7)=1/2;
jacob_h0(2,10)=1/2;
jacob_h0(2,11)=1/2;
jacob_h0(3,6)=-1;
jacob_h0(3,7)=1;
jacob_h0(4,10)=-1;
jacob_h0(4,11)=1;
elseif leg ==1
jacob_h0(1,6)=1/2;
jacob_h0(1,7)=1/2;
jacob_h0(2,10)=1/2;
jacob_h0(2,11)=1/2;
jacob_h0(3,6)=-1;
jacob_h0(3,7)=1;
jacob_h0(4,10)=-1;
jacob_h0(4,11)=1;
end
%%%%
jacob_jacobh0dq=zeros(4,11);
if leg ==0
elseif leg ==1
end
%%%%
%%%%
return