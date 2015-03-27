% Select primary leg manually
manual_leg_selection = 1;
max_leg_velocity = 1;
max_leg_acceleration = 30;

% Lateral hip PID control params
max_torque_lateral = min(MTR_HIP_MAX_CURRENT, HIP_CURRENT_LIMIT)*HIP_MOTOR_CONSTANT*HIP_MTR_GEAR_RATIO;
kp_lateral = 1000;
kd_lateral = 2*sqrt(kp_lateral*0.8); % 40
lateral_target_angle_left = -6*pi/180; % -35 degrees approx. cancels sagittal loads
lateral_target_angle_right = 6*pi/180; % +38 degrees approx. cancels sagittal loads
lateral_transition_force = 150;

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
% 5000/300, 3000/120
kp_motor = 3000; % Nm/rad 
kd_motor = 120;%0.90*2*sqrt(3.75*kp_motor); % Nm/rad , 90% of critical damping
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
kp_torso = 150;
%td_torso = 80e-3;
kd_torso = 0.90*2*sqrt(kp_torso);
mu_slide = 0.85;
max_GRF_angle = atan2(1,mu_slide*0.95);
enable_torso_wave = 0;
torso_wave_amplitude = 5*pi/180;
torso_wave_frequency = (1/5)*2*pi;

%% raibert hopper params
% Leg Angle Control
alpha_max = 140*pi/180;
alpha_min = 40*pi/180;
% real leg length laws
l_max = 0.96;
l_min = 0.4;
l_retract_escape = 0.90;
l_retract_swing_min = 0.65;
l_retract_swing_max = 0.8;
l_retract_delta = 0.15;
l0_max_angle_error = 20*pi/180;
l0_min_angle_error = 5*pi/180;
l_min_raibert_target = 0.80;
% raibert params
kp_raibert = 20000; 
%kd_raibert = 0*kp_raibert;
max_kp_raibert = 1.4*kp_raibert;
min_kp_raibert = 0.6*kp_raibert;
t_flight = 0.025;
dx_avg_desired = 0;
y_com_desired = 1.05;
raibert_target_energy = y_com_desired*m_total_real*g + 0.5*m_total_real*dx_avg_desired^2;


k_placement = 0.2;
velocity_avg_samples = 0.100/sample_time;
initial_dt = 0.200;
simbicon_alpha0 = 68*pi/180;
simbicon_c2 = 0.2;
simbicon_c1 = 1;
l0_virtual_raibert = 1.01;
l0_leg = 0.91;
min_leg_extension_time = 0.100;
x_limit = l0_leg*cos(alpha_min);

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
ff_energy_r = 0;%30;
ff_energy_l = 0;%50;
TO_threshold = 0.70;