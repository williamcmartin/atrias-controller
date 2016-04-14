clearvars;

addpath('..\');
addpath('..\terrain');
addpath('..\params');
addpath('..\scripts');
addpath('..\functions');
addpath('..\models');

load('animData_ATRIAS_boom_rough005_20','simout');



%% Set Variables (most of these don't matter...)
% steady_dist = cost_fun_opts.steady_dist; %20
max_floor_diff = 0.2;
ground = randomGroundProfile(5,0.1);
% noise_on_off = cost_fun_opts.noise_on_off;
% noise_variance = cost_fun_opts.noise_variance;
% noise_seed = cost_fun_opts.noise_seed;

% param = x;
param = ones(50,1);
paramIC = [1;1;1;1;1;1];
IC_com_height = 1;

set_control_params;
set_simulation_params;
set_vmc_params;

% % % Hacky way of defining ICs based on VMC parameters:
paramIC = ... [vx0, theta0, Lalpha0 (deg), LLength0 (m), Ralpha0 (deg), RLength0 (m)]
    [0; 0; ((2*pi-gamma_swing_thr)-pi/2)*180/pi; leg_length_max; ...
    ((2*pi-gamma_stance_thr)-pi/2)*180/pi; leg_length_min];
IC_com_height = 0.1 + paramIC(6)*sind(paramIC(5));
set_simulation_params;
set_vmc_params;
% % %

%% Read simout data, set animation parameters, and run animation Simulink file
q = simout.q_cont;
sim_t = simout.twalk;
v_shin_initial_r = 0;
v_thigh_initial_r = 0;

% Moving-floor parameters
delta_yaw0 = 0*pi/180; % Initial yaw should be positive
initial_boom_yaw = initial_boom_yaw + delta_yaw0;
q.signals.values(:,12) = q.signals.values(:,12) + delta_yaw0;
yaw_period = 170*pi/180;

height_speed = 1.25;
tau_height = 0.1; % for filtering
min_base_height = 0.5;
min_height = -min_base_height; %r_ground_1m = 2.0526
lead_yaw = -45*pi/180;
lag_yaw = 340*pi/180 + lead_yaw;
%     yaw_min = initial_boom_yaw;
%     yaw_max = initial_boom_yaw + 30/l_boom;
ts_anim = 0.0333; % (for 30 fps)


sim('ATRIAS_anim_moving_floor');