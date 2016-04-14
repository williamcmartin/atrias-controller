clear all; clc; close all;

model   = 'atrias_boom_nmSt_kinSw';


addpath('../../../../../')
addpath('../../../models/')
addpath('../../../scripts/')

% addpath('functions/')
% addpath('../common/')
% addpath('../../../OSU Repository/atrias-matlab/controllers/cmu/functions/')
% addpath('../../../OSU Repository/atrias-matlab/controllers/cmu/scripts/')
% addpath('../../../OSU Repository/atrias-matlab/controllers/cmu/models/')
% addpath('../../../OSU Repository/atrias-matlab/')
% colors
% simulation_params
% mechanical_params
% daq_params_cmu
% model_params
% actuator_control_params
% control_params


simulation_params;
mechanical_params;

daq_params_cmu;
model_params;
actuator_control_params;


% paramIC     = [1.3; 0; 120; 0.7; 60; 0.8];

param               = ones(51,1);
param(1)            = 0;            % CtrlPar_theta0
param(1+3+1+7)      = .9;           % St_FGain_VAS

set_control_params;


SEA_swing_ctrl_on_off   = 0;




t_end   = 7;

tStart_boomCtrl     = 1;
tEnd_boomCtrl       = 5;
% kp_boom_roll_Ctrl   = 1e10;
% kd_boom_roll_Ctrl   = .1*kp_boom_roll_Ctrl;
% kp_yaw_roll_Ctrl   = 1e10;
% kd_yaw_roll_Ctrl   = .1*kp_yaw_roll_Ctrl;
kp_boom_roll_Ctrl   = 0;
kd_boom_roll_Ctrl   = 0;

v_boom_yaw_Ctrl     = 10*pi/180;     % [rad/s]
kp_boom_yaw_Ctrl    = 1e9;
kd_boom_yaw_Ctrl    = 0.1*kp_boom_yaw_Ctrl;

simout = sim('atrias_boom_nmStand');
