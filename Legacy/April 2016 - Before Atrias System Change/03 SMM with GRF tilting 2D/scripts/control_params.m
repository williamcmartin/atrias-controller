%% Misc
manual_leg_selection = 1;
max_leg_velocity = 1;
max_leg_acceleration = 30;

%% Lateral hip control params
max_torque_lateral = min(MTR_HIP_MAX_CURRENT, HIP_CURRENT_LIMIT)*HIP_MOTOR_CONSTANT*HIP_MTR_GEAR_RATIO;
kp_lateral = 1000;
kd_lateral = 2*sqrt(kp_lateral*0.8);
lateral_target_angle_left = -2*pi/180; % -35 degrees approx. cancels sagittal loads
lateral_target_angle_right = 2*pi/180; % +38 degrees approx. cancels sagittal loads
lateral_transition_force = 150;
minimum_lateral_angle = -9.5*pi/180;
maximum_lateral_angle = 18*pi/180;

%% optimal motor torque distribution during force control
max_torque_sagittal = min(MTR_MAX_CURRENT, LEG_CURRENT_LIMIT)*LEG_MOTOR_CONSTANT*LEG_MTR_GEAR_RATIO;
lambda1 = 10; % hip torque 
lambda2 = 1;  % leg force

%% Leg Limits for commands
min_front_bar_angle = 85*pi/180; % ~83 degrees
max_front_bar_angle = 216*pi/180; % ~218 degrees
min_back_bar_angle = 146*pi/180; % ~144 degrees
max_back_bar_angle = 277*pi/180; % ~279 degrees
max_leg_angle = 230*pi/180;
min_leg_angle = 130*pi/180;
max_leg_length = 0.95;
min_leg_length = 0.4;
max_axial_leg_force = 2200; % N, maximum force before knee breaking is a significant issue

%% Sagittal motor PD control
kp_motor = 3000; % Nm/rad 
kd_motor = 0.60*2*sqrt(3.75*kp_motor); % Nm/rad , 60% of critical damping

%% State machine
fcut_contact = 95*(2*pi); % lowpass frequency on vertical GRF
contact_threshold = 0.20; % initial GRF touchdown threshold
loaded_threshold = 0.50; % locked contact GRF threshold
t_flight = 0.025; % time to wait before entering flight state

%% Posture control
desired_torso_angle = 0*pi/180;
kp_torso = 150;
kd_torso = 0.67*2*sqrt(kp_torso*i_torso(2));
mu_slide = 0.75;
max_GRF_angle = atan2(1,mu_slide*0.95);

%% Spring-Mass parameters
% Froude: v^2 / (l_leg*g)
% Dimensionless stiffness: k*l_leg / (m*g)
l0_virtual = 1.02;
k0_virtual = 13000; %20000/130
b_virtual = 130;
c_energy = 70; % energy correction gain
max_k_virtual = 1.4*k0_virtual;
min_k_virtual = 0.6*k0_virtual;
desired_com_apex_height = 1.09; % force plate height = 8.25cm
desired_com_forward_velocity = 0.5;

%% Secondary leg parameters
l_retract_swing_min = 0.55;
l_retract_swing_max = 0.8;
l_retract_delta = 0.15;
fcut_leg_spring = 15*(2*pi); % Hz, low pass filter cutoff frequency for tracking the leg spring signal
lpf_damping = sqrt(2)/2;
B1_lpf_leg_spring = -2*exp(-lpf_damping*fcut_leg_spring*sample_time)*cos(fcut_leg_spring*sample_time*sqrt(1-lpf_damping^2));
B2_lpf_leg_spring = exp(-2*lpf_damping*fcut_leg_spring*sample_time);
A_lpf_leg_spring = 1 + B1_lpf_leg_spring + B2_lpf_leg_spring;

%% Raibert placement parameters
alpha_min = 40*pi/180;
k_placement = 0.2;
velocity_avg_samples = 0.100/sample_time;
l0_leg = 0.91;
min_leg_extension_time = 0.100;
x_limit = l0_leg*cos(alpha_min);
x_global_range = 3; % m, distance to travel before reversing direction
velocity_target_step = 0.3; % m/s, maximum difference between current velocity and target velocity

%% Deadbeat params
minimum_deadbeat_energy = 640;

%% Kalman Filtering parameters - Center of Mass
% Coordinate system is z-up and in the yawed frame.
% x filter states: [dw_x]
% s_k+1 = s_k + dt/m*F
% when in stance, measure dx_w ~ dx_f with confidence based on loading
A_kalman_transverse = 1;
B_kalman_transverse = sample_time / m_total_real;
C_kalman_transverse = [1; 1]; % measurement is dx_rel + dxfoot^ = dx_w-dfL + dfL_hat, covariances sum.
G_kalman_transverse = B_kalman_transverse / sqrt(sample_time);
A_kalman_vertical = [1 sample_time; 0 1];
B_kalman_vertical = [0; sample_time/m_total_real];
C_kalman_vertical = [1 0; 0 1; 1 0; 0 1]; % measurement is [z_rel + z_foot^; dz_rel + dz_foot^; repeat for right];
G_kalman_vertical = B_kalman_vertical/sqrt(sample_time);
% Covariances
Q_kalman_GRF = 40^2; % N, error in GRF estimates
R_kalman_foot_stance = 0.005^2 + 0.005^2;  % m, geometry error + ground error
R_kalman_foot_slip = 0.005^2 + 1^2;
R_kalman_dfoot_stance = 0.005^2 + 0.005^2 ; % m/s, geometry error + ground_error
R_kalman_dfoot_slip = 0.005^2 + 5^2;
kalman_stance_slip_threshold = 0.01;
% Initial estimates
P0_kalman_transverse = 0.2^2; % m/s, initial state error covariance
P0_kalman_vertical = diag([0.05^2, 0.2^2]); % [m, m/s], initial state error covariance

%% Kalman Filtering parameters - Fourbar Gears
A_kalman_fourbar_gear = [1, sample_time; 0, 1];
B_kalman_fourbar_gear = [0, 0, 0; -1/j_motor, LEG_MTR_GEAR_RATIO/j_motor, -1/j_motor*(LEG_MTR_GEAR_RATIO-1)*j_rotor/i_robot]*sample_time;
C_kalman_fourbar_gear = [1, 0; 1, 0];
G_kalman_fourbar_gear = B_kalman_fourbar_gear / sqrt(sample_time);
R_kalman_absolute_fail = (90*pi/180)^2;
R_kalman_absolute_normal = (10^-3*pi/180)^2;
R_kalman_incremental_unloaded = (5*10^-3*pi/180)^2 + (LEG_INC_ENCODER_RAD_PER_TICK)^2;
R_kalman_incremental_loaded = (2.5*pi/180)^2 + (LEG_INC_ENCODER_RAD_PER_TICK)^2;
Q_kalman_spring_torque = 20^2;
Q_kalman_rotor_torque = 5^2;
Q_kalman_trunk_torque = 0.2^2*Q_kalman_GRF + 4*Q_kalman_rotor_torque + 4*Q_kalman_spring_torque;
P0_kalman_fourbar_gear = diag([R_kalman_absolute_normal, 2*R_kalman_absolute_normal/sample_time^2]);
max_absolute_measurement_innovation = 15*pi/180;
kalman_load_to_deflect_transmission = 500; % Nm
