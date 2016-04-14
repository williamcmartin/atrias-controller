%% Parameters for control loops

% virtual spring law
l0_virtual = 0.93;
l_retract = 0.90;
kp_virtual = 30000; % dimensionless stiffness: k*l_0 / m*g
kd_virtual = 0*kp_virtual;
kd_flight = 750;
kp_flight_max = 30000;
kp_flight_min = 3000;
extra_leg_damping = 300;

% Lateral hip PID control params
max_torque_lateral = min(MTR_HIP_MAX_CURRENT, HIP_CURRENT_LIMIT)*HIP_MOTOR_CONSTANT*HIP_MTR_GEAR_RATIO;
kp_lateral = 1000;
kd_lateral = 40;
lateral_target_angle_left = -6*pi/180; % -35 degrees approx. cancels sagittal loads
lateral_target_angle_right = 6*pi/180; % +38 degrees approx. cancels sagittal loads

% Lateral limits
minimum_lateral_angle = -9.5*pi/180;
maximum_lateral_angle = 18*pi/180;

% optimal motor torque distribution
max_torque_sagittal = min(MTR_MAX_CURRENT, LEG_CURRENT_LIMIT)*LEG_MOTOR_CONSTANT*LEG_MTR_GEAR_RATIO;
lambda1 = 1; % hip torque
lambda2 = 1;  % leg force

% Leg Angle Control
kp_leg_angle = 900;
kd_leg_angle = 90;
max_leg_angle = 220*pi/180;
min_leg_angle = 140*pi/180;

% Secondary Leg Length Control
kp_leg_length_secondary = 3000;
td_leg_length_secondary = 80e-3;
kd_leg_length_secondary = td_leg_length_secondary*kp_leg_length_secondary;
leg_length_secondary = 0.6;

% contact estimation
fcut_contact = 600;
contact_threshold = 0.20;
loaded_threshold = 0.5;

% posture control
desired_torso_angle = 0*pi/180;
kp_torso = 150;
td_torso = 100e-3;
kd_torso = td_torso*kp_torso;

% raibert hopper params
l_max = 0.96;
l_min = 0.4;
t_flight = 0.050;
dt_thrust = 0.120;
F_thrust = 700;
alpha_min = 50*pi/180;
x_limit = l0_virtual*cos(alpha_min);
dx_avg_desired = 0.5;
dx_desired_step = 0.2;
k_placement = 0.20; % 0.37 for right leg solo, 0.2 for two legs
dx_avg_samples = 0.200/sample_time;
initial_dt = 0.200;