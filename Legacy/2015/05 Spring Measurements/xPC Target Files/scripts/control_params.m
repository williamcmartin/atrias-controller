%% Parameters for control loops

% Control loop start time
control_start_time = 10;
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
%-- Low Pass filter to reduce resonance
fcut_res = 20*(2*pi); % Hz, Low pass filter cutoff frequency when calculating acceleration from velocity
lpf_damping = 0.5;
B1_lpf_res = -2*exp(-lpf_damping*fcut_res*sample_time)*cos(fcut_res*sample_time*sqrt(1-lpf_damping^2));
B2_lpf_res = exp(-2*lpf_damping*fcut_res*sample_time);
A_lpf_res = 1 + B1_lpf_res + B2_lpf_res;
%-- Notch filter for output (flight 1)
notch_damping = 0.1;
fnotch_f1 = 27*(2*pi);
B1_notch_f1 = -2*exp(-notch_damping*fnotch_f1*sample_time)*cos(fnotch_f1*sample_time*sqrt(1-notch_damping^2));
B2_notch_f1 = exp(-2*notch_damping*fnotch_f1*sample_time);
A1_notch_f1 = -2*cos(fnotch_f1*sample_time);
A2_notch_f1 = 1;
K_notch_f1 = (1+B1_notch_f1+B2_notch_f1)/(1+A1_notch_f1+A2_notch_f1);
%-- Notch filter for output (flight 2)
notch_damping = 0.1;
fnotch_f2 = 21*(2*pi);
B1_notch_f2 = -2*exp(-notch_damping*fnotch_f2*sample_time)*cos(fnotch_f2*sample_time*sqrt(1-notch_damping^2));
B2_notch_f2 = exp(-2*notch_damping*fnotch_f2*sample_time);
A1_notch_f2 = -2*cos(fnotch_f2*sample_time);
A2_notch_f2 = 1;
K_notch_f2 = (1+B1_notch_f2+B2_notch_f2)/(1+A1_notch_f2+A2_notch_f2);
%-- Notch filter for output (flight 3)
notch_damping = 0.1;
fnotch_f3 = 16.5*(2*pi);
B1_notch_f3 = -2*exp(-notch_damping*fnotch_f3*sample_time)*cos(fnotch_f3*sample_time*sqrt(1-notch_damping^2));
B2_notch_f3 = exp(-2*notch_damping*fnotch_f3*sample_time);
A1_notch_f3 = -2*cos(fnotch_f3*sample_time);
A2_notch_f3 = 1;
K_notch_f3 = (1+B1_notch_f3+B2_notch_f3)/(1+A1_notch_f3+A2_notch_f3);
%-- PD gains
kp_sea_torque_flight = 0.3;
kp_sea_torque_stance = 8;
kd_sea_torque_flight = 0.3*sqrt(2)/2*2*sqrt(k_sea.*j_segments) ./ k_sea; % Critical damping / spring_stiffness
kd_sea_torque_stance = sqrt(2)/2*2*sqrt(k_sea.*(4.4)) ./ k_sea; % Critical damping / spring_stiffness
%-- Feedforward
sea_moving_friction = [0 0 0 0]; % Nm/(rad/s)
sea_offset_friction = [7.659 -6.198 6.447 -6.594]; % Nm
sea_coulomb_friction = [18.69-3 26.08-3 25.95 26.8+3]; % Nm
sea_coulomb_friction_velocity_threshold = 20*pi/180; % rad/s
% % sea_moving_friction = [0 0 0 0]; % Nm/(rad/s)
% % sea_offset_friction = [7.659 -6.198 6.447 -6.594]; % Nm
% % sea_static_friction = [18.69 26.08 25.95 26.8]; % Nm
% % sea_extra_moving_friction = 0.001*ones(1,4);

k_ff = 1; % amount of feedforward to use
%-- Thresholds for activating SEA control
stance_flight_torque_threshold = 40*ones(1,4); % Nm, minimum measured torque to use large PD gains
sea_control_torque_cmd_small_threshold = 1*ones(1,4); %Nm, minimum commanded torque to activate sea control

% Motor position control for spring measurements
spring_load = (19.72)*0.453592;  % 19.72 -> 19.63 -> 19.34
ff_motor_position_front = -spring_load*g*0.5;
ff_motor_position_back = spring_load*g*0.4;
kp_motor_position = spring_load*g*0.45 / (0.5*pi/180);
kd_motor_position = 80e-3*kp_motor_position;

% System ID params
chirp_min_freq = 0;
chirp_max_freq = 50;
chirp_amplitude = 130;
chirp_bias = 200;
chirp_sweep_time = 80;
sine_freq = (1)*2*pi;

% Friction ID params
kp_motor_velocity = 500;
kd_motor_velocity = 80e-3*kp_motor_velocity;
sawtooth_time_values = [0 3 6];
sawtooth_peak_value = 50*pi/180;
sawtooth_slope = sawtooth_peak_value/sawtooth_time_values(2);


% Lateral hip PID control params
hip_gravity_compensation = (20+spring_load)*9.8*0.2; % hip_mass * gravity * lever_distance
max_torque_lateral = 3 * hip_gravity_compensation; 
kp_lateral = hip_gravity_compensation / (1.25*pi/180); % gravitational force at 1.25 degrees error = weight(kg) * gravity(m/s) * lever_distance(m) / (rad_to_deg constant)
kd_lateral = 0.9 * 2*sqrt(((2*pi*4)^2*(20*0.2^2))*(20*0.2^2)); % 90 percent of critical damping
ti_lateral = 100e-3;
ki_lateral = kp_lateral / ti_lateral;
i_limit_lateral = 1.2*max_torque_lateral; % 120% of max output (double the amount of torque needed to compensate hip weight) 