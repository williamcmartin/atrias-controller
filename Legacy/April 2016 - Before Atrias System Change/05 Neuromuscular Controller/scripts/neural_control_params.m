%
% setCtrlPar.m
%   set control parameters
% 
% given: param
%
% set:
%   CtrlPar_theta0
%   CtrlPar_FP
%   CtrlPar_LL
%   CtrlPar_St
%   CtrlPar_Sw
%   CtrlPar_Tr
%
% output:
%   parOffR (how much param is out of boundary defined in setParRange.m)
%
% by Seungmoon Song
% Jan 2014
%

l_BlP = 1;
l_FPP = 3;
l_LLP = 1;
l_StP = 22;
l_SwP = 21;
l_TrP = 2;

l_2DCtrl    = l_BlP + l_FPP + l_LLP + l_StP + l_SwP + l_TrP;

param2D     = param;


% ====================== %
% BOUND PARAMETER VALUES %
% ====================== %

setParRange;    % parRange

parOffR   = 0;
for iP = 1:length(param)
    % calculate how off param is
    parOffR = parOffR + (-param(iP)+parRange(iP,1))*(param(iP)<parRange(iP,1));
    parOffR = parOffR + (param(iP)-parRange(iP,2))*(param(iP)>parRange(iP,2));
    
    % keep param in range
    param(iP)	= max(parRange(iP,1), min(parRange(iP,2), param(iP)));
end



% ===================================== %
% SET SAGITTAL PLANE CONTROL PARAMETERS %
% ===================================== %

parBlCtrl   = param2D(1                                                   : l_BlP);
parFPCtrl   = param2D(l_BlP + 1                                           : l_BlP + l_FPP);
parLLCtrl   = param2D(l_BlP + l_FPP + 1                                   : l_BlP + l_FPP + l_LLP);
parStCtrl   = param2D(l_BlP + l_FPP + l_LLP + 1                           : l_BlP + l_FPP + l_LLP + l_StP);
parSwCtrl   = param2D(l_BlP + l_FPP + l_LLP + l_StP + 1                   : l_BlP + l_FPP + l_LLP + l_StP + l_SwP);
parTrCtrl   = param2D(l_BlP + l_FPP + l_LLP + l_StP + l_SwP + 1           : l_BlP + l_FPP + l_LLP + l_StP + l_SwP + l_TrP);


% --------------------
% higher layer control
% --------------------

% trunk balance Ctrl
CtrlPar_theta0      = parBlCtrl(1)      *1*pi/180;


% foot placement Ctrl (alpha Ctrl)

alpha0              = parFPCtrl(1)      *70 *pi/180;
alpha_cd            = parFPCtrl(2)      *(-5) *pi/180; % [rad/m]
alpha_cv            = parFPCtrl(3)      *(-5) *pi/180; % [rad*s/m]

FPCtrlPar = [alpha0 alpha_cd alpha_cv];

% swing leg length Ctrl
l_clr  	= parLLCtrl(1)*0.85;

LLCtrlPar = l_clr;


% ------------------
% stance leg control
% ------------------

% 0: prestimulations
St_PreSHFL          = parStCtrl(1)      *0.05; %[]
St_PreSGLU          = parStCtrl(2)      *0.05; %[]
St_PreSHAM          = parStCtrl(3)      *0.05; %[]
St_PreSRF           = parStCtrl(4)      *0.01;
St_PreSVAS          = parStCtrl(5)      *0.08; %[]
St_PreSBFSH         = parStCtrl(6)      *0.02;

% M1: realize compliant leg
St_FGain_GLU      	= parStCtrl(7)      *1.0/FmaxGLU;
St_FGain_VAS     	= parStCtrl(8)      *1.2/FmaxVAS;

% M2: prevent knee overextension
St_FGain_HAM     	= parStCtrl(9)      *1.0/FmaxHAM;
St_loffBFSH_VAS     = parStCtrl(10)   	*2;
St_LGainBFSH_VAS    = parStCtrl(11)     *2;
St_loffBFSH         = parStCtrl(12)     *1.1;
St_LGain_BFSH       = parStCtrl(13)     *2;

% M3: balance trunk
St_GainTh_HFL       = parStCtrl(14)     *1;
St_GainDTh_HFL      = parStCtrl(15)     *0.3;
St_GainTh_GLU       = parStCtrl(16)     *0.5;
St_GainDTh_GLU      = parStCtrl(17)     *0.1;
St_SGainGLU_HAM     = parStCtrl(18)     *1;

% M4: compensate swing leg
St_SGainCGLU_HFL    = parStCtrl(19)     *.1;
St_SGainCHAM_HFL    = parStCtrl(20)     *.1;
St_SGainCHFL_GLU    = parStCtrl(21)     *.1;
St_SGainCRF_GLU     = parStCtrl(22)     *.1;
% St_SGainGLU_HAM     = St_SGainGLU_HAM;

% pass control parameters to Simulink
StPreStim           =   ...
    [St_PreSHFL St_PreSGLU St_PreSHAM St_PreSRF St_PreSVAS ...
    St_PreSBFSH];

St_M1       = [St_FGain_GLU St_FGain_VAS];
St_M2       = [St_FGain_HAM St_loffBFSH_VAS St_LGainBFSH_VAS St_loffBFSH St_LGain_BFSH];
St_M3       = [St_GainTh_HFL St_GainDTh_HFL St_GainTh_GLU St_GainDTh_GLU St_SGainGLU_HAM];
St_M4       = [St_SGainCGLU_HFL St_SGainCHAM_HFL St_SGainCHFL_GLU St_SGainCRF_GLU St_SGainGLU_HAM];


StCtrlPar = [StPreStim St_M1 St_M2 St_M3 St_M4];

% indexes of control parameters
St_i = 0;
parSt_PreS_i    = St_i + 1	: St_i + length(StPreStim);
St_i = St_i + length(StPreStim);
parSt_M1_i   	= St_i + 1	: St_i + length(St_M1);
St_i = St_i + length(St_M1);
parSt_M2_i      = St_i + 1	: St_i + length(St_M2);
St_i = St_i + length(St_M2);
parSt_M3_i      = St_i + 1	: St_i + length(St_M3);
St_i = St_i + length(St_M3);
parSt_M4_i      = St_i + 1	: St_i + length(St_M4);
St_i = St_i + length(St_M4); % St_i is used in the Simulink file


% -----------------
% swing leg control
% -----------------

% % constants (measurment parameters)
% Sw_phi2lopt_BFSH    = 0.9965*rBFSH*rhoBFSH/loptBFSH;
% Sw_phiRef_BFSH      = 1.0436*phirefBFSH;
% Sw_a2lopt_RF        = 0.7905*rRFh*rhoRFh/loptRF;
% Sw_aRef_RF          = 1.3420*(phirefRFh-phirefRFk/2);
% Sw_a2lopt_HAM       = 0.7335*rHAMh*rhoHAMh/loptHAM;
% Sw_aRef_HAM         = 0.5048*(phirefHAMh-phirefHAMk/2);
% Sw_phi2lopt_HFL     = 0.9859*rHFL*rhoHFL/loptHFL;
% Sw_phiRef_HFL       = 1.0335*phirefHFL;
% Sw_phi2lopt_GLU     = 0.9506*rGLU*rhoGLU/loptGLU;
% Sw_phiRef_GLU       = 0.9361*phirefGLU;

% updated constants (measurment parameters)
load('lceMsmtParams');
Sw_phi2lopt_BFSH    = lceMsmtParams(1);
Sw_phiRef_BFSH      = lceMsmtParams(2);
Sw_a2lopt_RF        = lceMsmtParams(3);
Sw_aRef_RF          = lceMsmtParams(4);
Sw_a2lopt_HAM       = lceMsmtParams(5);
Sw_aRef_HAM         = lceMsmtParams(6);
Sw_phi2lopt_HFL     = lceMsmtParams(7);
Sw_phiRef_HFL       = lceMsmtParams(8);
Sw_phi2lopt_GLU     = lceMsmtParams(9);
Sw_phiRef_GLU       = lceMsmtParams(10);

% 0: prestimulations
Sw_PreSHFL          = parSwCtrl(1)      *0.01;
Sw_PreSGLU          = parSwCtrl(2)      *0.01;
Sw_PreSHAM          = parSwCtrl(3)      *0.01;
Sw_PreSRF           = parSwCtrl(4)      *0.01;
Sw_PreSVAS          = parSwCtrl(5)      *0.01;
Sw_PreSBFSH         = parSwCtrl(6)      *0.02;

% swing phase
Sw_a_del            = parSwCtrl(7)     *12*pi/180;

% swing Ctrl (hip)
Sw_LGainRF_HFL      = parSwCtrl(8)     *1/Sw_a2lopt_RF;
Sw_VGainRF_HFL      = parSwCtrl(9)     *.5;
Sw_LGainHAM_GLU     = parSwCtrl(10)     *0.5/Sw_a2lopt_HAM;
Sw_VGainHAM_GLU     = parSwCtrl(11)     *.5;

% swing Ctrl (knee_i)
Sw_VGainRF_BFSH   	= parSwCtrl(12)     *0.4*loptRF/(rRFh*rhoRFh);

% swing Ctrl (knee_ii)
Sw_VGainVAS_RF  	= parSwCtrl(13)     *0.08*loptBFSH/(rBFSH*rhoBFSH);
Sw_VGainBFSH     	= parSwCtrl(14)     *2.5/Sw_a2lopt_RF;

% swing Ctrl (knee_iii)
Sw_LGainHAM         = parSwCtrl(15)     *2/Sw_a2lopt_HAM;
Sw_SGainHAM_BFSH   	= parSwCtrl(16)     *6;
Sw_SHAM_thr         = parSwCtrl(17)     *0.65;

% swing Ctrl (stance preparation)
Sw_LGainHFL         = parSwCtrl(18)     *0.4;
Sw_LGainGLU         = parSwCtrl(19)     *0.4;
Sw_loffVAS          = parSwCtrl(20)     *0.1;
Sw_LGainVAS         = parSwCtrl(21)     *0.3;

% pass control parameters to Simulink
SwPreStim       =   ...
    [Sw_PreSHFL Sw_PreSGLU Sw_PreSHAM Sw_PreSRF Sw_PreSVAS ...
    Sw_PreSBFSH];

SwPhasePari     = ...
    [Sw_phi2lopt_BFSH Sw_phiRef_BFSH];

SwPhaseParii    = ...
    [Sw_aRef_RF Sw_a2lopt_RF Sw_a_del Sw_aRef_HAM Sw_a2lopt_HAM];
                
SwCtrlPar_H      = ...
    [Sw_a2lopt_RF Sw_aRef_RF Sw_LGainRF_HFL Sw_VGainRF_HFL Sw_a2lopt_HAM ...
    Sw_a_del Sw_aRef_HAM Sw_LGainHAM_GLU Sw_VGainHAM_GLU];

SwCtrlPar_Ki    = Sw_VGainRF_BFSH;

SwCtrlPar_Kii   = ...
    [Sw_VGainVAS_RF Sw_VGainBFSH Sw_phi2lopt_BFSH Sw_a2lopt_RF Sw_aRef_RF];
 
SwCtrlPar_Kiii  = ...
    [Sw_a_del Sw_aRef_HAM Sw_a2lopt_HAM Sw_LGainHAM Sw_SHAM_thr ...
    Sw_SGainHAM_BFSH];
     
SwCtrlPar_StP   = ...
    [Sw_phiRef_HFL Sw_phi2lopt_HFL Sw_LGainHFL Sw_phiRef_GLU Sw_phi2lopt_GLU ...
    Sw_LGainGLU Sw_loffVAS Sw_LGainVAS];

SwCtrlPar       =   ...
    [SwPreStim SwPhasePari SwPhaseParii SwCtrlPar_H ...
    SwCtrlPar_Ki SwCtrlPar_Kii SwCtrlPar_Kiii SwCtrlPar_StP];

% indexes of control parameters
Sw_i = 0;
parSwPreS_i     = Sw_i + 1	: Sw_i + length(SwPreStim);
Sw_i = Sw_i + length(SwPreStim);
parSwPhi_i      = Sw_i + 1	: Sw_i + length(SwPhasePari);
Sw_i = Sw_i + length(SwPhasePari);
parSwPhii_i     = Sw_i + 1	: Sw_i + length(SwPhaseParii);
Sw_i = Sw_i + length(SwPhaseParii);
parSwH_i        = Sw_i + 1	: Sw_i + length(SwCtrlPar_H);
Sw_i = Sw_i + length(SwCtrlPar_H);
parSwKi_i       = Sw_i + 1	: Sw_i + length(SwCtrlPar_Ki);
Sw_i = Sw_i + length(SwCtrlPar_Ki);    
parSwKii_i      = Sw_i + 1	: Sw_i + length(SwCtrlPar_Kii);
Sw_i = Sw_i + length(SwCtrlPar_Kii);
parSwKiii_i     = Sw_i + 1	: Sw_i + length(SwCtrlPar_Kiii);
Sw_i = Sw_i + length(SwCtrlPar_Kiii);
parSwKiv_i      = Sw_i + 1	: Sw_i + length(SwCtrlPar_StP);
Sw_i = Sw_i + length(SwCtrlPar_StP);


% ----------------------------------
% stance -> swing transition control
% ----------------------------------

Tr_St_sup           = parTrCtrl(1)    *1;
Tr_Sw               = parTrCtrl(2)    *1;

TrCtrlPar = [Tr_St_sup Tr_Sw];