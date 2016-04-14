
run('../../../../../cmu_startup');

control_start_time  = 15;





%%% initial ATRIAS pose %%%
initial_r_leg_length    = 0.8;
initial_r_leg_angle     = 75*pi/180 + pi/2;
initial_l_leg_length    = 0.8;
initial_l_leg_angle     = 105*pi/180 + pi/2;
%%% initial ATRIAS pose %%%

%%% NM stance Ctrl %%%
param               = ones(51,1);
param(1)            = 0;            % CtrlPar_theta0
param(1+3+1+7)      = .8;           % St_FGain_VAS
%%% NM stance Ctrl %%%

%%% kinematic swing leg control %%%
kinSw_t_start     	= 0.5;              % [sec]
kinSw_alpha_start   = 130*pi/180;       % [rad]

kinSw_t_del         = 0.5;              % [sec]

kinSw_len_min       = 0.7;              % [m]

kinSw_alpha_tgt     = 80*pi/180;        % [rad]
kinSw_len_tgt       = 0.9;              % [m]
kinSw_min_t_del     = kinSw_t_del*0.85;
%%% kinematic swing leg control %%%


set_control_params;




flag_CtrlMode   = 0;    % 0: pose Ctrl, 1:nmSt_kinSw


% map tunable NMCtrl params
tune_M1_G    = St_FGain_VAS*FmaxVAS;
tune_M3_0    = CtrlPar_theta0*180/pi;
tune_M3_P    = St_GainTh_HFL;
tune_M3_D    = St_GainDTh_HFL;

% map tunable kinSwCtrl params
tune_kinSw_t_del        = kinSw_t_del;                  % [sec]
tune_kinSw_min_t_del    = kinSw_min_t_del;              % [sec]
tune_kinSw_alpha_start  = kinSw_alpha_start*180/pi;     % [deg]
tune_kinSw_alpha_tgt    = kinSw_alpha_tgt*180/pi;       % [deg]
tune_kinSw_len_tgt      = kinSw_len_tgt;                % [m]
tune_kinSw_len_min      = kinSw_len_min;                % [m]

% map tunable poser params
poser_RLegLen   = initial_r_leg_length;
poser_RLegAlp   = (initial_r_leg_angle -pi/2)*180/pi;
poser_LLegLen   = initial_l_leg_length;
poser_LLegAlp   = (initial_l_leg_angle -pi/2)*180/pi;


