% 
% ATRIAS_VMSMlInit.m
%   set parameters of the virtual musculoskeletal model
%
% set:
%   segment dimensions
%   muscle-skeleton attachments
%   muscle dynamics
%   neural transmission delays
%
% by Seungmoon Song
% started at Oct 28, 2014
%


% ================= %
% VIRTUAL-LEG MODEL %
% ================= %

% Virtual Leg length maximum when [splay = min_splay_angle]
min_splay_angle = 35*pi/180;

% Shank segment
D12_S = l_seg*cos(min_splay_angle/2);  %CS1 (ankle joint) to C2 (knee joint)

% Thigh Segment
D12_T = D12_S; 

% Max Leg Length
leg_0 = D12_S + D12_T; % [m] full leg length (from hip to ankle)

% Max virtual knee angle (to avoid singularities)
v12_max = 179*pi/180; 

% ---------------------
% 1.6 Joint Soft Limits
% ---------------------

% angles at which soft limits engages
% phi12_LowLimit =  70*pi/180; %[rad]
% phi12_UpLimit  = 130*pi/180; %[rad]

phi12_LowLimit = 0*pi/180; %[rad]
phi12_UpLimit  = 175*pi/180; %[rad]
    
phi23_UpLimit  = 230*pi/180; %[rad]
phi23_LowLimit = 100*pi/180; %[rad]

% phi12_max = phi12_UpLimit;
% phi12_min = phi12_LowLimit;
phi12_max = phi12_UpLimit;
phi12_min = phi12_LowLimit;
phi23_max = phi23_UpLimit;
phi23_min = phi23_LowLimit;

overextend_angle = 20*pi/180;

% soft block reference joint stiffness
c_jointstop     = 0.3 / (pi/180);  %[Nm/rad]

% soft block maximum joint stop relaxation speed
w_max_jointstop = 1 * pi/180; %[rad/s]


% =========================== %
% MUSCLE-SKELETON ATTACHMENTS %
% =========================== %
       
% Hip FLexor group attachement
rHFL       =       0.08; % [m]   constant lever contribution 
phirefHFL  = 160*pi/180; % [rad] reference angle at which MTU length equals 
rhoHFL     =        0.5; %       sum of lopt and lslack          

% GLUtei group attachement
rGLU       =       0.08; % [m]   constant lever contribution 
phirefGLU  = 120*pi/180; % [rad] reference angle at which MTU length equals 
rhoGLU     =        0.5; %       sum of lopt and lslack 
                         
% HAMstring group attachement (hip)
rHAMh       = 0.08;         % [m]   constant lever contribution 
phirefHAMh  = 150*pi/180;   % [rad] reference angle at which MTU length equals 
rhoHAMh     = 0.5;          %       sum of lopt and lslack 

% HAMstring group attachement (knee)
rHAMk       = 0.05;         % [m]   constant lever contribution 
phirefHAMk  = 180*pi/180;   % [rad] reference angle at which MTU length equals 
rhoHAMk     = 0.5;          %       sum of lopt and lslack 

% RF group attachement (hip)
rRFh      =       0.08; % [m]   constant lever contribution 
phirefRFh = 170*pi/180; % [rad] reference angle at which MTU length equals 
rhoRFh    =        0.3; %       sum of lopt and lslack 

% RF group attachement (knee)
rRFkmax     = 0.06;         % [m]   maximum lever contribution
rRFkmin     = 0.04;         % [m]   minimum lever contribution
phimaxRFk   = 165*pi/180;   % [rad] angle of maximum lever contribution
phiminRFk   =  45*pi/180;   % [rad] angle of minimum lever contribution
phirefRFk   = 125*pi/180;   % [rad] reference angle at which MTU length equals 
rhoRFk      = 0.5;          %       sum of lopt and lslack 
phiScaleRFk = acos(rRFkmin/rRFkmax)/(phiminRFk-phimaxRFk);

% VAStus group attachement
rVASmax     = 0.06;         % [m]   maximum lever contribution
rVASmin     = 0.04;         % [m]   minimum lever contribution
phimaxVAS   = 165*pi/180;   % [rad] angle of maximum lever contribution
phiminVAS   =  45*pi/180;   % [rad] angle of minimum lever contribution
phirefVAS   = 120*pi/180;   % [rad] reference angle at which MTU length equals 
rhoVAS      = 0.6;          %       sum of lopt and lslack
phiScaleVAS = acos(rVASmin/rVASmax)/(phiminVAS-phimaxVAS);

% BFSH group attachement
rBFSH    	= 0.04;         % [m]   constant lever contribution 
phirefBFSH 	= 160*pi/180;   % [rad] reference angle at which MTU length equals 
rhoBFSH    	= 0.7;          %       sum of lopt and lslack


% =============== %
% MUSCLE DYNAMICS %
% =============== %

% -------------------------------
% shared muscle tendon parameters
% -------------------------------

% excitation-contraction coupling
preA =  0.01; %[] preactivation
tau  =  0.01; %[s] delay time constant

% contractile element (CE) force-length relationship
w    =   0.56; %[lopt] width
c    =   0.05; %[]; remaining force at +/- width

% CE force-velocity relationship
N    =   1.5; %[Fmax] eccentric force enhancement
K    =     5; %[] shape factor

% Series elastic element (SE) force-length relationship
eref =  0.04; %[lslack] tendon reference strain

% -------------------------------
% shared muscle tendon parameters (DISCRETE)
% -------------------------------
K_ECC_discrete = sample_time/((2*tau/sample_time)+sample_time);
a_ECC_discrete = -1;
b_ECC_discrete = ((2*tau/sample_time)-sample_time)/((2*tau/sample_time)+sample_time);



% --------------------------
% muscle-specific parameters
% --------------------------

% hip flexor muscles
FmaxHFL   = 2000; % maximum isometric force [N]
loptHFL   = 0.11; % optimum fiber length CE [m]
vmaxHFL   =   12; % maximum contraction velocity [lopt/s]
lslackHFL = 0.10; % tendon slack length [m]

% glutei muscles
FmaxGLU   = 1500; % maximum isometric force [N]
loptGLU   = 0.11; % optimum fiber length CE [m]
vmaxGLU   =   12; % maximum contraction velocity [lopt/s]
lslackGLU = 0.13; % tendon slack length [m]

% hamstring muscles
FmaxHAM   = 3000; % maximum isometric force [N]
loptHAM   = 0.10; % optimum fiber length CE [m]
vmaxHAM   =   12; % maximum contraction velocity [lopt/s]
lslackHAM = 0.31; % tendon slack length [m]

% rectus femoris muscles
FmaxRF   = 1200; % %850 maximum isometric force [N]
loptRF   = 0.08; % optimum fiber length CE [m]
vmaxRF   =   12; % maximum contraction velocity [lopt/s]
lslackRF = 0.35; % tendon slack length [m]

% vasti muscles
FmaxVAS     = 6000; % maximum isometric force [N]
loptVAS     = 0.08; % optimum fiber length CE [m]
vmaxVAS     =   12; % maximum contraction velocity [lopt/s]
lslackVAS   = 0.23; % tendon slack length [m]

% BFSH
FmaxBFSH	=  350; % maximum isometric force [N]
loptBFSH    = 0.12; % optimum fiber length CE [m]
vmaxBFSH    =   12; %6 % maximum contraction velocity [lopt/s]
lslackBFSH  = 0.10; % tendon slack length [m]

% gastrocnemius muscle
FmaxGAS    = 1500; % maximum isometric force [N]
loptGAS    = 0.05; % optimum fiber length CE [m]
vmaxGAS    =   12; % maximum contraction velocity [lopt/s]
lslackGAS  = 0.40; % tendon slack length [m]

% soleus muscle
FmaxSOL    = 4000; % maximum isometric force [N]
loptSOL    = 0.04; % optimum fiber length CE [m]
vmaxSOL    =    6; % maximum contraction velocity [lopt/s]
lslackSOL  = 0.26; % tendon slack length [m]

% tibialis anterior
FmaxTA     =  800; % maximum isometric force [N]
loptTA     = 0.06; % optimum fiber length CE [m]
vmaxTA     =   12; % maximum contraction velocity [lopt/s]
lslackTA   = 0.24; % tendon slack length [m]


% --------------------------------------------------
% 5 Muscle parameters for Calculating Metabolic Cost
% --------------------------------------------------
% added by S. Song, May 2011

FTproportionHFL = 0.45;
massHFL = 0.95; % kg

FTproportionGLU = 0.50;
massGLU = 0.70; % kg

FTproportionHAM = 0.40;
massHAM = 1.25; % kg

FTproportionRF = 0.55;
massRF = 0.40; % kg

FTproportionVAS = 0.50;
massVAS = 2.05; % kg

FTproportionBFSH = 0.35;
massBFSH = 0.15; % kg

% FTproportionGAS = 0.50;
% massGAS = 0.30; % kg
% 
% FTproportionTA = 0.30;
% massTA = 0.20; % kg
% 
% FTproportionSOL = 0.25;
% massSOL = 0.70; % kg



% ========================== %
% NEURAL TRAJSMISSION DELAYS %
% ========================== %

LongLoopDelay	= 0.030;    % [s] additional to spinal reflexes
LongDelay       = 0.020/2;  % [s] ankle joint muscles
MidDelay        = 0.010/2;  % [s] knee joint muscles
ShortDelay      = 0.005/2;  % [s] hip joint muscles
MinDelay        = 0.001/2;  % [s] between neurons in the spinal cord

% for descrete time step controller

LongLoopDelay_discrete = round(LongLoopDelay/sample_time);
LongDelay_discrete = round(LongDelay/sample_time);
MidDelay_discrete = round(MidDelay/sample_time);
ShortDelay_discrete = round(ShortDelay/sample_time);
MinDelay_discrete = round(MinDelay/sample_time);

