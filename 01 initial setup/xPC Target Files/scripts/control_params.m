%% Parameters for control loops

% Control loop start time
control_start_time = 9;
sagittal_starting_time = control_start_time+4;
sagittal_torque_ramp_time = sagittal_starting_time+5;
lateral_torque_ramp_time = control_start_time+2;

% SEA control params
max_sagittal_loaded_torque = LEG_MTR_MAX_TORQUE;
max_sagittal_unloaded_torque = LEG_MTR_MAX_CONT_TORQUE; % Nm
%-- Low Pass filter for acceleration
fcut_acceleration = 60*(2*pi); % Hz, Low pass filter cutoff frequency when calculating acceleration from velocity
lpf_damping = sqrt(2)/2; % butterworth damping ratio
B1_lpf_accel = -2*exp(-lpf_damping*fcut_acceleration*sample_time)*cos(fcut_acceleration*sample_time*sqrt(1-lpf_damping^2));
B2_lpf_accel = exp(-2*lpf_damping*fcut_acceleration*sample_time);
A_lpf_accel = 1 + B1_lpf_accel + B2_lpf_accel;
%-- Low Pass filter for torque derivative
fcut_dtau = 20*(2*pi); % Hz, Low pass filter cutoff frequency when calculating acceleration from velocity
lpf_damping = sqrt(2)/2; % butterworth damping ratio
B1_lpf_dtau = -2*exp(-lpf_damping*fcut_dtau*sample_time)*cos(fcut_dtau*sample_time*sqrt(1-lpf_damping^2));
B2_lpf_dtau = exp(-2*lpf_damping*fcut_dtau*sample_time);
A_lpf_dtau = 1 + B1_lpf_dtau + B2_lpf_dtau;
%-- Notch filter for output (flight)
notch_damping = 0.05;
fnotch_cmd = 27*(2*pi); % notch frequency
B1_notch_cmd = -2*exp(-notch_damping*fnotch_cmd*sample_time)*cos(fnotch_cmd*sample_time*sqrt(1-notch_damping^2));
B2_notch_cmd = exp(-2*notch_damping*fnotch_cmd*sample_time);
A1_notch_cmd = -2*cos(fnotch_cmd*sample_time);
A2_notch_cmd = 1;
K_notch_cmd = (1+B1_notch_cmd+B2_notch_cmd)/(1+A1_notch_cmd+A2_notch_cmd);
%-- Notch filter for output (stance)
notch_damping_s = 0.1;
fnotch_cmd_s = 3.54*(2*pi); % notch frequency
B1_notch_cmd_s = -2*exp(-notch_damping_s*fnotch_cmd_s*sample_time)*cos(fnotch_cmd_s*sample_time*sqrt(1-notch_damping_s^2));
B2_notch_cmd_s = exp(-2*notch_damping_s*fnotch_cmd_s*sample_time);
A1_notch_cmd_s = -2*cos(fnotch_cmd_s*sample_time);
A2_notch_cmd_s = 1;
K_notch_cmd_s = (1+B1_notch_cmd_s+B2_notch_cmd_s)/(1+A1_notch_cmd_s+A2_notch_cmd_s);
%-- PD gains
kp_sea_torque_flight = 2.4;
kp_sea_torque_stance = 8;
kd_damping = sqrt(2)/2;
kd_sea_torque_flight = kd_damping*2*sqrt(k_sea.*j_segments) ./ k_sea; % Critical damping / spring_stiffness
kd_sea_torque_stance = kd_damping*2*sqrt(k_sea.*(4.4)) ./ k_sea; % Critical damping / spring_stiffness
%-- Feedforward
sea_moving_friction = [0 0 0 0]; % Nm/(rad/s)
sea_offset_friction = [7.659 -6.198 6.447 -6.594]; % Nm
sea_static_friction = [18.69 26.08 25.95 26.8]; % Nm
k_ff = 1; % amount of feedforward to use
%-- Thresholds for activating SEA control
stance_flight_torque_threshold = 40*ones(1,4); % Nm, minimum measured torque to use large PD gains
sea_control_torque_cmd_small_threshold = 1*ones(1,4); %Nm, minimum commanded torque to activate sea control
sea_control_torque_measure_threshold = [5 5 5 5]; %Nm, minimum measured torque to activate sea control
sea_control_torque_cmd_large_threshold = [15 15 15 15]; %Nm, threshold for what is considered a large torque cmd

% Sine Wave Walk Position params
A_angle_h = 20*pi/180;                         % Hip angle wave amplitude
w_angle_h = (1/4)*2*pi;                                  % Hip angle wave frequency
phase_h = 0;
A_angle_k = 20*pi/180;                         % Knee angle wave amplitude
phase_k = pi/2;
angle_midpoint_k = 120*pi/180;
angle_midpoint_h = 180*pi/180;

% Sine Wave Walk Behavior PD params
kp_h_sine_walk = 500;                               % Proportional PD constant
td_h_sine_walk = 80e-3;
kd_h_sine_walk = td_h_sine_walk*kp_h_sine_walk;                   % Derivative PD constant
kp_k_sine_walk = 500;                       % Proportional PD constant
td_k_sine_walk = 80e-3;
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

% Lateral hip PID control params
hip_gravity_compensation = 20*9.8*0.2; % hip_mass * gravity * lever_distance
max_torque_lateral = 3 * hip_gravity_compensation; 
kp_lateral = hip_gravity_compensation / (1.25*pi/180); % gravitational force at 1.25 degrees error = weight(kg) * gravity(m/s) * lever_distance(m) / (rad_to_deg constant)
kd_lateral = 0.9 * 2*sqrt(((2*pi*4)^2*(20*0.2^2))*(20*0.2^2)); % 90 percent of critical damping
ti_lateral = 100e-3;
ki_lateral = kp_lateral / ti_lateral;
i_limit_lateral = 1.2*max_torque_lateral; % 120% of max output (double the amount of torque needed to compensate hip weight) 