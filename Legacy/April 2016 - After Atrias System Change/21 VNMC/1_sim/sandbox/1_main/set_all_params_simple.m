%% Run this script before running model
clear all; 
close all; 
clc;
addpath('terrain');
addpath('params');
addpath('scripts');
addpath('functions');
addpath('models');

%% Set parameters

% Control System
steady_dist = 10; %[m] walking distance to stop simulation
param = ones(50,1);
SEA_swing_ctrl_on_off = 0;

set_control_params;


% ATRIAS System
ground = randomGroundProfile(2,0.1);
noise_on_off = 0;
noise_variance = 0.01*pi/180;
noise_seed = 1;
max_floor_diff = 0;
paramIC = ... [vx0, theta0, Lalpha0 (deg), LLength0 (m), Ralpha0 (deg), RLength0 (m)]
    [0; 0; 70; 0.89; 110; 0.89];
IC_com_height = 0.10 + paramIC(6)*sind(paramIC(5));

set_simulation_params; %need to run set_control_params first

% VMC Parameters
set_vmc_params;




%% Extra
paramIC = ... [vx0, theta0, Lalpha0 (deg), LLength0 (m), Ralpha0 (deg), RLength0 (m)]
   [0; 0; ((2*pi-gamma_swing_thr)-pi/2)*180/pi; leg_length_max; ...
   ((2*pi-gamma_stance_thr)-pi/2)*180/pi; leg_length_min];
% paramIC = ... [vx0, theta0, Lalpha0 (deg), LLength0 (m), Ralpha0 (deg), RLength0 (m)]
%    [0; 0; (pi/2-step_rho/2)*180/pi; leg_length0; ...
%    (pi/2+step_rho/2)*180/pi; leg_length0];
IC_com_height = 0.10 + paramIC(6)*sind(paramIC(5));
set_simulation_params; %need to run set_control_params first
set_vmc_params;









