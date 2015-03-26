%% Parameters for control loops
actuator_control_params;

%% Lateral hip PID control params
hip_gravity_compensation = 20*9.8*0.2; % hip_mass * gravity * lever_distance
max_torque_lateral = 3 * hip_gravity_compensation; 
kp_lateral = 1500;
kd_lateral = 10;
ti_lateral = 100e-3;
ki_lateral = 0;
i_limit_lateral = 1.2*max_torque_lateral; % 120% of max output (double the amount of torque needed to compensate hip weight) 

%% optimal motor torque distribution during force control
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
kp_motor = 5000; % Nm/rad
kd_motor = 300; % Nm/rad

%% contact estimation
fcut_contact = 600;
contact_threshold = 0.20;
loaded_threshold = 0.50;

%% posture control
desired_torso_angle = 0*pi/180;
kp_torso = 150;
td_torso = 200e-3;
kd_torso = td_torso*kp_torso;
mu_slide = 0.85;
max_GRF_angle = atan2(1,mu_slide*0.95);

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
l_retract_swing = 0.7;
l0_max_angle_error = 20*pi/180;
l0_min_angle_error = 5*pi/180;
kd_flight = 750;
kp_flight_max = 30000;
kp_flight_min = 3000;
extra_leg_damping = 300;
% raibert params
kp_raibert = 23000; 
kd_raibert = 0*kp_raibert;
max_kp_raibert = 1.4*kp_raibert;
min_kp_raibert = 0.6*kp_raibert;
l0_leg = 0.95;
t_flight = 0.025;
dt_thrust = 0.120;
F_thrust = 400;
raibert_energy_injection = 20;
x_limit = l0_leg*cos(alpha_min);
dx_avg_desired = 0.5;
k_placement = 0.2;
velocity_avg_samples = 0.100/sample_time;
initial_dt = 0.200;
simbicon_alpha0 = 68*pi/180;
simbicon_c2 = 0.2;
simbicon_c1 = 1;

%% SMM params
% Froude = v^2 / (l_leg*g)
% Dimensionless stiffness: k*l_leg / (m*g)
target_energy = 444.778054; % J
alpha_apex = 1.1389;
l0_virtual = 1.037112;
k0_virtual = 8820; % optimal stiffness @ 285.6 Nm peak motor torque
max_k_virtual = k0_virtual*1.3;
min_k_virtual = k0_virtual*0.7;
initial_com_height = 0.95;
initial_dx = 0;
c_energy = 70; % energy correction gain
ff_energy_r = 30;
ff_energy_l = 50;
TO_threshold = 0.70;