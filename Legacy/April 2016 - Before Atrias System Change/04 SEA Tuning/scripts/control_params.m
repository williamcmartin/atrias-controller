% Lateral hip PID control params
max_torque_lateral = min(MTR_HIP_MAX_CURRENT, HIP_CURRENT_LIMIT)*HIP_MOTOR_CONSTANT*HIP_MTR_GEAR_RATIO;
kp_lateral = 1000;
kd_lateral = 40;
lateral_target_angle_left = -6*pi/180; % -35 degrees approx. cancels sagittal loads
lateral_target_angle_right = 6*pi/180; % +38 degrees approx. cancels sagittal loads

% Lateral limits
minimum_lateral_angle = -9.5*pi/180;
maximum_lateral_angle = 18*pi/180;

%% optimal motor torque distribution during force control
max_torque_sagittal = min(MTR_MAX_CURRENT, LEG_CURRENT_LIMIT)*LEG_MOTOR_CONSTANT*LEG_MTR_GEAR_RATIO;

lambda1 = 10; % hip torque 
lambda2 = 1;  % leg force

%% Leg Limits
min_front_bar_angle = 85*pi/180; % ~83 degrees
max_front_bar_angle = 216*pi/180; % ~218 degrees
min_back_bar_angle = 146*pi/180; % ~144 degrees
max_back_bar_angle = 277*pi/180; % ~279 degrees
max_leg_angle = 230*pi/180;
min_leg_angle = 130*pi/180;
max_leg_length = 0.97;
min_leg_length = 0.4;

%% Sagittal motor PD control
kp_motor = 3000; % Nm/rad 5000
kd_motor = 0.06*kp_motor; % Nm/rad 300
fcut_leg_spring = 15*(2*pi); % Hz, low pass filter cutoff frequency for tracking the leg spring signal
lpf_damping = sqrt(2)/2;
B1_lpf_leg_spring = -2*exp(-lpf_damping*fcut_leg_spring*sample_time)*cos(fcut_leg_spring*sample_time*sqrt(1-lpf_damping^2));
B2_lpf_leg_spring = exp(-2*lpf_damping*fcut_leg_spring*sample_time);
A_lpf_leg_spring = 1 + B1_lpf_leg_spring + B2_lpf_leg_spring;


%% contact estimation
fcut_contact = 600;
contact_threshold = 0.20;
loaded_threshold = 0.50;

%% posture control
desired_torso_angle = 0*pi/180;
kp_torso = 300;
td_torso = 200e-3;
kd_torso = td_torso*kp_torso;
mu_slide = 0.85;
max_GRF_angle = atan2(1,mu_slide*0.95);
enable_torso_wave = 0;
torso_wave_amplitude = 5*pi/180;
torso_wave_frequency = (1/5)*2*pi;

%% raibert hopper params
% Leg Angle Control
kp_leg_angle = 900;
kd_leg_angle = 90;
alpha_max = 140*pi/180;
alpha_min = 40*pi/180;
% real leg length laws
l_max = 0.96;
l_min = 0.4;
l_retract_escape = 0.90;
l_retract_swing = 0.53;
l0_max_angle_error = 20*pi/180;
l0_min_angle_error = 5*pi/180;
l_min_raibert_target = 0.80;
kd_flight = 750;
kp_flight_max = 30000;
kp_flight_min = 3000;
extra_leg_damping = 300;


%% SEA Tuning
commanded_spring_torque = -50;
lowest_commanded_spring_torque = 0;
enable_left_step = 0;
enable_right_step = 0;
kp_sea_tuning = 6; % 6 in stance, 0.3 in swing
kd_sea_tuning = 0.1; % 0.1 in stance, 0.0025 in swing
spring_torque_step_period = 0.500;
max_sagittal_desired_swing_torque = 30;
kp_swing_trajectory = 0;
kd_swing_trajectory = 0;
sea_coulomb_friction_tuning = [20 20 20 20]; % Nm
sea_coulomb_friction_direction_switch_sensitivity_tuning = [15 15 15 15];


%% Triangle wave
% triangle wave generator
back_right_triangle_wave_speed = 40*pi/180; 
front_right_triangle_wave_speed = 40*pi/180;
back_left_triangle_wave_speed = 40*pi/180;
front_left_triangle_wave_speed = 40*pi/180;

back_right_triangle_amplitude = 20*pi/180;
front_right_triangle_amplitude = 20*pi/180;
back_left_triangle_amplitude = 20*pi/180;
front_left_triangle_amplitude = 20*pi/180;

front_left_triangle_wave_midpoint = 140*pi/180;
back_right_triangle_wave_midpoint = 220*pi/180;
front_right_triangle_wave_midpoint = 140*pi/180;
back_left_triangle_wave_midpoint = 220*pi/180;

front_left_triangle_period = 4*front_left_triangle_amplitude/front_left_triangle_wave_speed;
back_right_triangle_period = 4*back_right_triangle_amplitude/back_right_triangle_wave_speed;
front_right_triangle_period = 4*front_right_triangle_amplitude/front_right_triangle_wave_speed;
back_left_triangle_period = 4*back_left_triangle_amplitude/back_left_triangle_wave_speed;
