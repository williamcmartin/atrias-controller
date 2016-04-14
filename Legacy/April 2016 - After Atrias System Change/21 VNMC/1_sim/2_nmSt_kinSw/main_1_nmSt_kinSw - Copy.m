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
initial_l_leg_length    = 0.88;
initial_l_leg_angle     = 105*pi/180 + pi/2;
ankle_initial_r         = 25*pi/180;
ankle_initial_l         = 45*pi/180;
%%% initial ATRIAS pose %%%



%%% kinematic swing leg control %%%
kinSw_t_start     	= 1.5;              % [sec]
kinSw_alpha_start   = 100*pi/180;       % [rad]

kinSw_t_del         = 0.5;              % [sec]

kinSw_len_min       = 0.7;              % [m]

kinSw_alpha_tgt     = 80*pi/180;        % [rad]
kinSw_len_tgt       = 0.9;              % [m]
kinSw_min_t_del     = kinSw_t_del*0.85;



min_front_bar_angle = 98.0*pi/180; % ~83 degrees
max_front_bar_angle = 194.8*pi/180; % ~218 degrees
min_back_bar_angle = 165.0*pi/180; % ~144 degrees
max_back_bar_angle = 262.4*pi/180; % ~279 degrees

kp_motor = 3000; % Nm/rad 
kd_motor = 0.90*2*sqrt(3.75*kp_motor); % Nm/rad , 90% of critical damping
%%% kinematic swing leg control %%%



t_end   = 20;

tStart_boomCtrl     = 1;
tEnd_boomCtrl       = t_end;
% kp_boom_roll_Ctrl   = 1e10;
% kd_boom_roll_Ctrl   = .1*kp_boom_roll_Ctrl;
% kp_yaw_roll_Ctrl   = 1e10;
% kd_yaw_roll_Ctrl   = .1*kp_yaw_roll_Ctrl;
kp_boom_roll_Ctrl   = 0;
kd_boom_roll_Ctrl   = 0;

v_boom_yaw_Ctrl     = 10*pi/180;     % [rad/s]
kp_boom_yaw_Ctrl    = 1e9;
kd_boom_yaw_Ctrl    = 0.1*kp_boom_yaw_Ctrl;






simulation_params;
mechanical_params;

daq_params_cmu;
model_params;
actuator_control_params;

set_control_params;

simout = sim(model);