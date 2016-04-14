
%% Swing/Stance Control parameters
des_forward_velocity = 1;
start_forward_velocity_time = 1;

hip_height = 0.78;  %STARTING CONFIGURATION
step_width = 0.5;
DS_width = 0.2;

vmc_alpha_tgt = 75*pi/180; %Target leg angle for first heel-strike

leg_clearance = 0.1;
leg_ground_penetration = 0.05;

leg_length0 = sqrt((step_width/2)^2+hip_height^2); %nominal leg length (middle of double-support)
leg_length_min = sqrt(hip_height^2+((step_width - DS_width)/2)^2);
leg_length_max = sqrt(hip_height^2 + (DS_width + (step_width - DS_width)/2)^2);
gamma_stance_thr = pi-asin((step_width-DS_width)/(2*leg_length_min));
gamma_swing_thr = pi+asin((DS_width+(step_width-DS_width)/2)/leg_length_max);

min_swing_time = 0.3;
max_swing_time = 0.5;
nominal_swing_time = 0.4;

max_gamma_velocity = 5; % [rad/s]
max_gamma_acceleration = 30; % [rad/s^2]
max_leg_velocity = 2; %1 for Will
max_leg_acceleration = 30; %30 for Will


%% Plot Stance/Swing Lengths/Angles
figure('Name','Target Leg Lengths/Angles')
hold on;
line([step_width/2 DS_width/2],[0 hip_height],...
    'LineWidth',4,'Color',red);
line([-step_width/2 DS_width/2],[0 hip_height],...
    'LineWidth',4,'Color',red);
line([-step_width/2 -DS_width/2],[0 hip_height],...
    'LineWidth',4,'Color',blue);
line([step_width/2 -DS_width/2],[0 hip_height],...
    'LineWidth',4,'Color',blue);
text(0,0.1,['step width = ',num2str(step_width)],'HorizontalAlignment','center');
text(0,hip_height,['DS width = ',num2str(DS_width)],'HorizontalAlignment','center');
title('VMC Double Support Geometry');
axis square
hold off




%% COM Desired Accelerations (PD Law)
kp_x_vmc = 75;
kd_x_vmc = 1;
x0_vmc = initial_boom_yaw * (l_boom + boom_mount_to_center_diagonal)*cos(initial_boom_roll);
dx0_vmc = des_forward_velocity;

kp_y_vmc = 75;
kd_y_vmc = 1;
y0_vmc_start = hip_height + 0.1;
% y0_vmc_end = leg_length0 + 0.1;
y0_vmc_end = y0_vmc_start;
y0_transition_time = 0.75;
dy0_vmc = 0;


kp_theta_vmc = 75;
kd_theta_vmc = 1;
theta0_vmc = 0;
dtheta0_vmc = 0;

ddx_max = 100;
ddy_max = 100;
dy_max = 100;
ddtheta_max = 100;

mu_s_DS = 0.4;
mu_s_SS = 0.9;
min_Fy = 0.2*m_total*g;

tau_start = 0.1;

%% COM Measurements
com_height_offset = -0.7776;  % Also defined in set_simulation_params

%% State machine parameters
override_Rstance_vmc = 0;
override_Lstance_vmc = 0;


%% Double Support KKT Optimization
lambda1_DS = 1;
lambda2_DS = 1;
lambda3_DS = 1;
lambda4_DS = 1/1000000;


%% Single Support KKT Optimization
% Stance Leg
lambda1_SS = 1;
lambda2_SS = 1;
lambda3_SS = 1;
lambda4_SS = 1/10000;


%% Sagittal motor PD control
% 5000/300, 3000/120
j_rotor = 1.5e-3;
j_motor = j_rotor*LEG_MTR_GEAR_RATIO^2;
kp_motor = 3000; % Nm/rad 
kd_motor = 120;%0.90*2*sqrt(3.75*kp_motor); % Nm/rad , 90% of critical damping
fcut_leg_spring = 15*(2*pi); % Hz, low pass filter cutoff frequency for tracking the leg spring signal
lpf_damping = sqrt(2)/2;
B1_lpf_leg_spring = -2*exp(-lpf_damping*fcut_leg_spring*sample_time)*cos(fcut_leg_spring*sample_time*sqrt(1-lpf_damping^2));
B2_lpf_leg_spring = exp(-2*lpf_damping*fcut_leg_spring*sample_time);
A_lpf_leg_spring = 1 + B1_lpf_leg_spring + B2_lpf_leg_spring;


%% Leg Limits
min_front_bar_angle = 85*pi/180; % ~83 degrees
max_front_bar_angle = 216*pi/180; % ~218 degrees
min_back_bar_angle = 146*pi/180; % ~144 degrees
max_back_bar_angle = 277*pi/180; % ~279 degrees
max_leg_angle = 230*pi/180;
min_leg_angle = 130*pi/180;
max_leg_length = 0.97;
min_leg_length = 0.4;

