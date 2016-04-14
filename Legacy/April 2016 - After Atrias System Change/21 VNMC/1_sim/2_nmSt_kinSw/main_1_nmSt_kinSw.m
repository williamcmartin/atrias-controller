clear all; clc; close all;

model   = 'atrias_boom_nmSt_kinSw';


addpath('../../../../../')
addpath('../../../models/')
addpath('../../../scripts/')
addpath('../../../functions/')


% paramIC     = [1.3; 0; 120; 0.7; 60; 0.8];

param               = ones(51,1);
param(1)            = 0;            % CtrlPar_theta0
param(1+3+1+7)      = .8;           % St_FGain_VAS



%%% initial ATRIAS pose %%%
initial_r_leg_length    = 0.9;
initial_r_leg_angle     = 75*pi/180 + pi/2;
initial_l_leg_length    = 0.83;
initial_l_leg_angle     = 100*pi/180 + pi/2;
ankle_initial_r         = 25*pi/180;
ankle_initial_l         = 45*pi/180;
%%% initial ATRIAS pose %%%



%%% kinematic swing leg control %%%
kinSw_t_start     	= 1.5;              % [sec]
kinSw_alpha_start   = 110*pi/180;       % [rad]

kinSw_t_del         = 0.5;              % [sec]

kinSw_len_min       = 0.7;              % [m]

kinSw_alpha_tgt     = 70*pi/180;        % [rad]
kinSw_len_tgt       = 0.9;              % [m]
kinSw_min_t_del     = kinSw_t_del*0.85;
%%% kinematic swing leg control %%%



t_end   = 20;

tStart_boomCtrl     = 0;
tEnd_boomCtrl       = tStart_boomCtrl+3;
% kp_boom_roll_Ctrl   = 1e10;
% kd_boom_roll_Ctrl   = .1*kp_boom_roll_Ctrl;
% kp_yaw_roll_Ctrl   = 1e10;
% kd_yaw_roll_Ctrl   = .1*kp_yaw_roll_Ctrl;
kp_boom_roll_Ctrl   = 0;
kd_boom_roll_Ctrl   = 0;

v_dTrunk_boom       = 1.3;              % [m/s]
dt_a_dTrunk_boom	= 5;                % [sec]
dt_fade_boomCtrl    = 2;
kp_boom_yaw_Ctrl    = 1e10;
kd_boom_yaw_Ctrl    = 0.1*kp_boom_yaw_Ctrl;






simulation_params;
mechanical_params;

daq_params_cmu;
model_params;
actuator_control_params;

set_control_params;

simout = sim(model);
