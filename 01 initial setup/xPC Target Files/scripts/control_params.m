% Control loop start time
control_start_time = 3.1;

% SEA control params
k_leg_spring = 4118.3;
f_cutoff_d = 300;
f_cutoff_sd = 100;
kp_sea_torque = 3*5e-4;
td_sea_torque = 0;
ki_sea_torque = 0;
kd_sea_torque = td_sea_torque*kp_sea_torque;
% SEA position control params
kp_sea_position = 1.5*k_leg_spring;
td_sea_position = 30e-3;
kd_sea_position = kp_sea_position * td_sea_position;
% SEA velocity control params
kp_velocity = 1;
td_velocity = 10e-3;
kd_velocity = kp_velocity * td_velocity;


% Sine Wave Walk Position params
A_angle_h = 20*pi/180;                         % Hip angle wave amplitude
w_angle_h = (1/4)*2*pi;                                  % Hip angle wave frequency
phase_h = 0;
A_angle_k = 20*pi/180;                         % Knee angle wave amplitude
phase_k = pi/2;
angle_midpoint_k = 120*pi/180;
angle_midpoint_h = 180*pi/180;

% Sine Wave Walk Behavior PD params
kp_h_sine_walk = 400;                               % Proportional PD constant
td_h_sine_walk = 80e-3;
kd_h_sine_walk = td_h_sine_walk*kp_h_sine_walk;                   % Derivative PD constant
kp_k_sine_walk = 400;                       % Proportional PD constant
td_k_sine_walk = 80e-3;
ki_k_sine_walk = 1;
kd_k_sine_walk = td_k_sine_walk*kp_k_sine_walk;    % Derivative PD constant

% Hip roll position params
A_angle_lat = 10*pi/180;
w_angle_lat = w_angle_h;
angle_midpoint_lat = 5*pi/180;

% Hip roll behavior PD params
kp_lat = 100;
td_lat = 100e-3;
kd_lat = td_lat*kp_lat;
t_lat = 33; % seconds before diminishing lateral motors