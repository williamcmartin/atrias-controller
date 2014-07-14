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

% Leg Angle Control
kp_leg_angle = 900;
kd_leg_angle = 90;
max_leg_angle = 220*pi/180;
min_leg_angle = 140*pi/180;

% Secondary Leg Length Control
kp_leg_length_secondary = 3000;
td_leg_length_secondary = 80e-3;
kd_leg_length_secondary = td_leg_length_secondary*kp_leg_length_secondary;

% virtual spring law
l0_virtual = 0.95;
l_retract = 0.92;
kp_virtual = 23000; % dimensionless stiffness: k*l_0 / m*g
kd_virtual = 0*kp_virtual;
kd_flight = 750;
kp_flight_max = 30000;
kp_flight_min = 3000;
extra_leg_damping = 300;

% contact estimation
fcut_contact = 600;
contact_threshold = 0.20;
loaded_threshold = 0.50;

% posture control
desired_torso_angle = 0*pi/180;
kp_torso = 150;
td_torso = 200e-3;
kd_torso = td_torso*kp_torso;

% raibert hopper params
l_max = 0.96;
l_min = 0.4;
t_flight = 0.025;
dt_thrust = 0.120;
F_thrust = 400;
raibert_energy_injection = 30;
alpha_min = 50*pi/180;
x_limit = l0_virtual*cos(alpha_min);
dx_avg_desired = 0.4;
k_placement = 0.2;
velocity_avg_samples = 0.100/sample_time;
initial_dt = 0.200;

% SMM params
TO_threshold = 0.70;
initial_com_height = 0.95;
initial_dx = 0;
target_energy = 327; % J
c_energy = 70; % energy correction gain
ff_energy_r = 70;
ff_energy_l = 100;
k0_virtual = kp_virtual;
max_k_virtual = k0_virtual*1.4;
min_k_virtual = k0_virtual*0.6;


