function [g mTotal L1 L2 L3 L4 m1 m2 m3 m4 Jcm1 Jcm2 Jcm3 Jcm4 ellzcm1 ellzcm2 ellzcm3 ellzcm4 ellycm1 ellycm2 ellycm3 ellycm4 LT mT JcmT ellzcmT ellycmT mH JcmH K1 K2 Kd1 Kd2 Jrotor1 Jrotor2 Jgear1  Jgear2 R1  R2 Kfric_HarmonicDrive] = modelParametersAtrias_v05
%
%
%Model parameters for planar ATRIAS.
%
%Grizzle estimated these values on 29 September 2010
%
% syms g L1 L2 L3 L4 m1 m2 m3 m4
% syms Jcm1 Jcm2 Jcm3 Jcm4
% syms ellzcm1 ellzcm2 ellzcm3 ellzcm4 ellycm1 ellycm2 ellycm3 ellycm4
% syms LT mT JcmT  ellzcmT  ellycmT
% syms K1 K2 Jrotor1 Jrotor2 Jgear1  Jgear2 R1  R2

[g mTotal m1 m2 m3 m4 mH mT L1 L2 L3 L4 LT W] = modelParametersAtriasMassLength_v05;

% Moments of inertia - leg segments 1-4
Jcm1 =0.0228; % kg m^2 
Jcm2 = 0.031;
Jcm3 = 0.0176;
Jcm4 = 0.01260;

% COM distances (z and y) - leg segments 1-4
ellzcm1 = 0.1435; %m 
ellzcm2 = 0.1822;
ellzcm3 = 0.1137;
ellzcm4 = 0.15203;
ellycm1 = -0.0253; 
ellycm2 = 0.0157;
ellycm3 = 0;
ellycm4 = 0;

% Torso Data

% see [g mTotal m1 m2 m3 m4 mT L1 L2 L3 L4 LT W mH] =  modelParametersAtriasMassLength 
% for mass distribution of torso
ellzcmT  = 0.6046; 
%ellzcmT  = 0.3; 
ellycmT = 0.0181; 
JcmT = 1.73;  
JcmH=2*0.10791;


%Motor and Gear Reducers
R1=50;
R2=R1;
Jgear1 = 2.85377e-3; % kg m^2 SHOULD be the Harmonic Drive Inertia......Current, it is the nominal value from MABEL step down pulley
Jgear2=Jgear1;
Jrotor1= 7e-4; % kg m^2 
Jrotor2=Jrotor1;

% Spring data
% From Jonathan   
KJonathan = 1200.0; % N-m/rad.
%
Kspring = 50;   %Newton meter per one degree of displacement
%K1=Kspring*180/pi; % Nm/rad
%
K1= 0.85*KJonathan;
K2=1.1*KJonathan;
%%% Should add dampers here as well.
Zeta=.4;  
Kd1 = 2*Zeta*sqrt(K1);
Kd2 = 2*Zeta*sqrt(K2);


% Zeta=0.1;
% Kd1 = 2*Zeta*sqrt(K1/mTotal)*mTotal;
% Kd2 = 2*Zeta*sqrt(K2/mTotal)*mTotal;

Kfric_HarmonicDrive = 0*3.2868e+000; %(.3/.26658)*3.2868e+000;

return
