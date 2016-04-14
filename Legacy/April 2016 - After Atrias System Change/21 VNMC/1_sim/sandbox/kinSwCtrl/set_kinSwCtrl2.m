
clear all; clc;

addpath('../../../../functions');


%%% test param %%%
test_t_SwStart  = 0.001;


legAlp0     = 110*pi/180;   % [rad]
dlegAlp0    = -20*pi/180;    % [rad/s]
legLen0     = 0.8;          % [m]
 


%%% kinematic swing leg control %%%
kinSw_alpha_start   = 110*pi/180;       % [rad]

kinSw_time_del      = 0.5;              % [sec]

kinSw_l_clr         = 0.6;              % [m]

kinSw_alpha_tgt     = 70*pi/180;        % [rad]
kinSw_len_tgt       = 0.8;              % [m]
kinSw_min_f_duration    = kinSw_time_del*0.85;
%%% kinematic swing leg control %%%



sim_t   = kinSw_time_del + test_t_SwStart;
