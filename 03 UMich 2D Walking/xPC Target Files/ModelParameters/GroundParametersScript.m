
%%%% GroundParametersScript

%----------------------------------
GRF_UpperLimit=4*g*mTotal;
GRF_LowerLimit=-0.25*g*mTotal;
%------------------------------------------
%
h_pied    = 0.05;
vH_horid  = 1.1; 
haut_marche = 0.00;
%haut_marche = 0.005;
%-------------------------------------------
%
% Paramètres du sol
%
LambdaContact=5e5;
NContact=1.5 ; %3/2;	       % >=1	% Sphere sur un plan Hertzien
KContact=5e5;

change_foot=-0.005; %-0.003; % Franck uses -0.001 % I was using ZERO

%
%-------------------------------------------
% % 
LambdaContact=5*LambdaContact; % 3 and 5 and 10 work 
KContact=1*KContact; % 2 slows him down; %1.2 works; so does 1
% % NContact=1.5;

%
%-------------------------------------------
%
Sigma0Frottement=260.0;
Sigma1Frottement=0.6;
Alpha0Frottement=0.285;
Alpha1Frottement=0;
Alpha2Frottement=0.18;

if 0
    Ksqrt=0.3%0.3;   % for Finite Time convergence in the horizontal direction
    KsqrtVert=3e4;% 3e5 works % for Finite Time convergence in the vertical direction
elseif 0
    Ksqrt=0*0.3;
    KsqrtVert=0;% Finite time convergence ONLY in the horizontal direction
else
    Ksqrt=0*0.3;
    KsqrtVert=0*3e4;%  NO Finite Time Corrections
end
% 
% Sigma0Frottement=1.6*260.0; % 1.3 worked
% Sigma1Frottement=30*0.6; % 1.3 and 10 worked
% Alpha0Frottement=1*0.285;; % 1 worked
% Alpha1Frottement=0;
% Alpha2Frottement=1.3*0.018;

%----------------------------------------
%
% *************************** %
% 3. GeyerGround Interaction Model %
% *************************** %

% ----------------------
% 3.1 Vertical component
% ----------------------

% stiffness of vertical ground interaction
k_gy = 0.5*mTotal*g/0.01; %[N/m]

% max relaxation speed of vertical ground interaction
v_gy_max = 0.03; %[m/s]



% ------------------------
% 3.2 Horizontal component
% ------------------------

% sliding friction coefficient
mu_slide = 0.8;

% sliding to stiction transition velocity limit
vLimit = 0.01; %[m/s]

% stiffness of horizontal ground stiction
k_gx = 0.5*mTotal*g/0.1; %[N/m] 0.01

% max relaxation speed of horizontal ground stiction
v_gx_max = 0.03; %[m/s] 0.03

% stiction to sliding transition coefficient
mu_stick = 0.9;
%%%%%%%%%%%%%%%%%%%%%