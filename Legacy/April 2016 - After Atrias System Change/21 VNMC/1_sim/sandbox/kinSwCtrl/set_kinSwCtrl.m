
clear all; clc;

addpath('../../../../functions');


%%% test param %%%
test_t_SwStart  = 0.001;
COM_x_dx        = -[0.05 -1];
COM_y_dy        = -[0.05 0];
z_dz_foot2com   = [0.8 0];
 


%%% kinematic swing leg control %%%
kinSw_alpha_start   = 110*pi/180;       % [rad]

kinSw_time_del      = 0.5;              % [sec]

% kinSw_len_min       = 0.6;              % [m]

kinSw_alpha_tgt     = 70*pi/180;        % [rad]
kinSw_len_tgt       = 0.8;              % [m]
%%% kinematic swing leg control %%%



%%% kinSwCtrl param %%%
kinSw_parabolic_z_retraction = 0.9-kinSw_len_tgt;
kinSw_footx_tgt     = kinSw_len_tgt*cos(kinSw_alpha_tgt);
kinSw_footy_tgt     = -0.05;
kinSw_z_land        = kinSw_len_tgt*sin(kinSw_alpha_tgt);
kinSw_min_f_duration    = kinSw_time_del*0.85;


sim_t   = kinSw_time_del + test_t_SwStart;
