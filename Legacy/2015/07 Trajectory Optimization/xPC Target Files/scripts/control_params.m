%% Parameters for control loops

actuator_control_params;

% Lateral hip PID control params
hip_gravity_compensation = 20*9.8*0.2; % hip_mass * gravity * lever_distance
max_torque_lateral = 3 * hip_gravity_compensation; 
kp_lateral = 1500;%hip_gravity_compensation / (1.25*pi/180); % gravitational force at 1.25 degrees error = weight(kg) * gravity(m/s) * lever_distance(m) / (rad_to_deg constant)
kd_lateral = 10;%0.9 * 2*sqrt(((2*pi*4)^2*(20*0.2^2))*(20*0.2^2)); % 90 percent of critical damping
ti_lateral = 100e-3;
ki_lateral = 0;%kp_lateral / ti_lateral;
i_limit_lateral = 1.2*max_torque_lateral; % 120% of max output (double the amount of torque needed to compensate hip weight) 

% optimal motor torque distribution
lambda1 = 1; % hip torque 
lambda2 = 1;  % leg force

% Leg Limits
min_front_bar_angle = 85*pi/180; % ~83 degrees
max_front_bar_angle = 216*pi/180; % ~218 degrees
min_back_bar_angle = 146*pi/180; % ~144 degrees
max_back_bar_angle = 277*pi/180; % ~279 degrees
max_leg_angle = 230*pi/180;
min_leg_angle = 130*pi/180;
max_leg_length = 0.98;
min_leg_length = 0.4;

% Leg Angle Control
kp_leg_angle = 900;
kd_leg_angle = 90;
alpha_max = 140*pi/180;
alpha_min = 40*pi/180;

% Secondary Leg Length Control
kp_leg_length_secondary = 3000;
td_leg_length_secondary = 80e-3;
kd_leg_length_secondary = td_leg_length_secondary*kp_leg_length_secondary;

% contact estimation
fcut_contact = 600;
contact_threshold = 0.20;
loaded_threshold = 0.50;

% posture control
desired_torso_angle = 0*pi/180;
kp_torso = 150;
td_torso = 200e-3;
kd_torso = td_torso*kp_torso;

% real leg length laws
l_max = 0.96;
l_min = 0.4;
l_retract_escape = 0.90;
l_retract_swing = 0.7;
l0_max_angle_error = 20*pi/180;
l0_min_angle_error = 5*pi/180;
kp_virtual = 23000; % dimensionless stiffness: k*l_0 / m*g
kd_virtual = 0*kp_virtual;
kd_flight = 750;
kp_flight_max = 30000;
kp_flight_min = 3000;
extra_leg_damping = 300;

% raibert hopper params
l0_leg = 0.96;
t_flight = 0.025;
dt_thrust = 0.120;
F_thrust = 400;
raibert_energy_injection = 0;
x_limit = l0_leg*cos(alpha_min);
dx_avg_desired = 0.5;
k_placement = 0.2;
velocity_avg_samples = 0.100/sample_time;
initial_dt = 0.200;
simbicon_alpha0 = 68*pi/180;
simbicon_c2 = 0.2;
simbicon_c1 = 1;

% SMM params
alpha_apex = 0.9074;
TO_threshold = 0.70;
initial_com_height = 1.137112;
initial_dx = 0;
target_energy = 415.020744; % J
c_energy = 70; % energy correction gain
ff_energy_r = 60;
ff_energy_l = 60;
l0_virtual = 1.037112; % virtual spring rest length
l0_virtual_initial_leg_target = 0.96; % initial leg length target
k0_virtual = 23000;
max_k_virtual = k0_virtual*1.4;
min_k_virtual = k0_virtual*0.6;


% trajectory tuning
run_trajectory = false;
secondary_to_apex_target = false;
time_to_apex = 0.400;
reset_leg_length = 0.7; 
reset_leg_angle = 180*pi/180;
kp_length = 0;%3000;
kd_length = 0;%240;
kp_angle = 0;%900;
kd_angle = 0;%90;
kp_motor = 5000; % Nm/rad
kd_motor = 300; % Nm/rad

