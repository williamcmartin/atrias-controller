%% Assign control parameters

%% Sample time
sample_time = 0.001;
sim_t = 60;
ts_data     = 0.01;
ts_anim     = 0.01;

%% Robot-to-NMM Interface parameters

%% ATRIAS leg length
l_seg = 0.5;
min_splay_angle = 45*pi/180; % DEFINES STRAIGHT LEG LENGTH delta_phi_min = 25.5*pi/180;

 
%% Virtual leg length
l_v = l_seg*cos(min_splay_angle/2);  %CS1 (ankle joint) to C2 (knee joint)
v12_max = 179*pi/180; %max virtual knee angle (to avoid singularities)

% Thigh Segment
D12_T = l_v; 
D12_S = D12_T;

% Max Leg Length (used by set_neural_ctrl_params.m)
leg_0 = D12_S + D12_T; % [m] full leg length (from hip to ankle)


%% Boom geometry (xTorso and dxTorso calculations)
l_boom = 1.8161;
boom_mount_to_center = 0.2225;
pitch_mount_angle = 7.2824 * pi/180;
boom_mount_to_center_diagonal = boom_mount_to_center / cos(pitch_mount_angle);


%% Robot mass (leg load)
m_torso = 17.9;
m_hshaft = 20;
m_thigh = 0.69;
m_lowerleg = 0.4438;
m_shin = 0.75;
m_fblink = 0.46;
m_rotor = 1e-5;
m_virtual_gear = 1e-5;
m_output_gear = 1e-5;
m_gearing = m_rotor+m_virtual_gear+m_output_gear;

num_legs = 2;
m_total = num_legs*(m_hshaft + m_thigh + m_lowerleg + m_shin + m_fblink + 2*m_gearing) + m_torso;

%% Gravity
g = 9.81;

%% Foot Contact detection
contactThr = 0.35;
releaseThr = 0.2;

%% SEA Spring
k_leg_spring = 4118.3;


%% PD Joint Limit Avoidance
kp_pd_avoid_limits = 5000;
kd_pd_avoid_limits = 1000;

delta_phi_min = 25.5*pi/180; % Mechanical Limits
delta_phi_max = 160*pi/180;
phi_thigh_min = 72.5*pi/180;
phi_thigh_max = 225*pi/180;
phi_shin_min = 135*pi/180;
phi_shin_max = 287.5*pi/180;

min_splay_buffer = 1*pi/180;
min_splay_dropoff = 5*pi/180;
kp_splay_min = kp_pd_avoid_limits/10;
kd_splay_min = kd_pd_avoid_limits;

delta_phi_max_buffer = 20*pi/180;
delta_phi_max_dropoff = 2*pi/180;
kp_splay_max = kp_pd_avoid_limits;
kd_splay_max = kd_pd_avoid_limits;

phi_thigh_min_buffer = 20*pi/180;
phi_thigh_min_dropoff = 2*pi/180;
kp_thigh_min = kp_pd_avoid_limits;
kd_thigh_min = kd_pd_avoid_limits;

phi_thigh_max_buffer = 20*pi/180;
phi_thigh_max_dropoff = 2*pi/180;
kp_thigh_max = kp_pd_avoid_limits;
kd_thigh_max = kd_pd_avoid_limits;

phi_shin_min_buffer = 20*pi/180;
phi_shin_min_dropoff = 2*pi/180;
kp_shin_min = kp_pd_avoid_limits;
kd_shin_min = kd_pd_avoid_limits;

phi_shin_max_buffer = 20*pi/180;
phi_shin_max_dropoff = 2*pi/180;
kp_shin_max = kp_pd_avoid_limits;
kd_shin_max = kd_pd_avoid_limits;



%% Lateral hip PID control params
boom_mount_angle = 7.2824 * pi/180; % rad
boom_pelvis_offset_angle = 0.174439; % rad
l_yaw_center_to_pelvis = 1.978; % m
m_leg_motor = 18; % kg
lateral_offset = 0.2; % m

HIP_MTR_MAX_CONT_CURRENT = 8.2; %Maximum continuous hip motor current
HIP_MOTOR_CONSTANT = 0.184;
HIP_MTR_GEAR_RATIO = 57;
MTR_HIP_MAX_CURRENT = 60.0; %Maximum hip motor current for scaling
HIP_CURRENT_LIMIT = 60;
HIP_MTR_MAX_CONT_TORQUE = HIP_MTR_MAX_CONT_CURRENT*HIP_MOTOR_CONSTANT*HIP_MTR_GEAR_RATIO;
max_torque_lateral = min(MTR_HIP_MAX_CURRENT, HIP_CURRENT_LIMIT)*HIP_MOTOR_CONSTANT*HIP_MTR_GEAR_RATIO;

kp_lateral = 1000;
kd_lateral = 2*sqrt(kp_lateral*0.8); % 40
lateral_target_angle_right = -6*pi/180; % +38 degrees approx. cancels sagittal loads
lateral_transition_force = 150;

% Lateral limits
minimum_lateral_angle = -9.5*pi/180;
maximum_lateral_angle = 18*pi/180;

%% SEA Control
MTR_MAX_CURRENT = 140.0; %Maximum motor current 
LEG_CURRENT_LIMIT = 100; %45 for swing is safe
LEG_MOTOR_CONSTANT = 0.119;
LEG_MTR_GEAR_RATIO = 50;
max_sagittal_loaded_torque = 833; %min(MTR_MAX_CURRENT, LEG_CURRENT_LIMIT)*LEG_MOTOR_CONSTANT*LEG_MTR_GEAR_RATIO;
max_sagittal_unloaded_torque = 267; %1.5*178.5; % Nm

%-- Low Pass filter to reduce resonance
fcut_res = 20*(2*pi); % Hz, Low pass filter cutoff frequency when calculating acceleration from velocity
lpf_damping = 0.5;
B1_lpf_res = -2*exp(-lpf_damping*fcut_res*sample_time)*cos(fcut_res*sample_time*sqrt(1-lpf_damping^2));
B2_lpf_res = exp(-2*lpf_damping*fcut_res*sample_time);
A_lpf_res = 1 + B1_lpf_res + B2_lpf_res;

%-- Notch filter for output (flight 1)
notch_damping = 0.1;
fnotch_f1 = 33*(2*pi); %27*(2*pi)
B1_notch_f1 = -2*exp(-notch_damping*fnotch_f1*sample_time)*cos(fnotch_f1*sample_time*sqrt(1-notch_damping^2));
B2_notch_f1 = exp(-2*notch_damping*fnotch_f1*sample_time);
A1_notch_f1 = -2*cos(fnotch_f1*sample_time);
A2_notch_f1 = 1;
K_notch_f1 = (1+B1_notch_f1+B2_notch_f1)/(1+A1_notch_f1+A2_notch_f1);


%-- SEA Gains
kp_sea_torque = [0.3, 0.3, 6.0, 6.0];
kd_sea_torque = [0.0025, 0.0025, 0.1, 0.1];
gain_nodes_sea_torque = [0,65,350,700];

%-- Updated spring constants
k_sea = [4118.3 4118.3 4118.3 4118.3]; % [4255.0 4525.3 4372.1 4322.4]; % [Nm/rad] (RB RF LB LF) (old value; 4118.3)

%-- Friction Compensation
sea_sliding_friction = [0 0 0 0]; % Nm/(rad/s)
sea_extra_sliding_friction = 0.001*ones(1,4); % Nm/(rad/s)
sea_offset_friction = [7.659 -6.198 6.447 -6.594]; % Nm
sea_coulomb_friction = [18.69 26.08 25.95 26.8+5]; % Nm
sea_coulomb_friction_direction_switch_sensitivity = [15 5 15 15];


%-- Feedforward
k_ff = 0; % amount of feedforward to use
fcut_acceleration = 600;

%-- Thresholds for activating SEA control
loaded_unloaded_torque_threshold = 65*ones(1,4); % Nm, minimum measured torque to use large PD gains
sea_control_torque_cmd_small_threshold = 1*ones(1,4); %Nm, minimum commanded torque to activate sea control

%-- Saturation for dtau_des
% dtau_des_max = 1/0.001; % 1 Nm per time-step

%-- Low Pass filter for torque derivative
fcut_dtau = 20*(2*pi); % Hz, Low pass filter cutoff frequency when calculating acceleration from velocity
lpf_damping = sqrt(2)/2; % butterworth damping ratio
B1_lpf_dtau = -2*exp(-lpf_damping*fcut_dtau*sample_time)*cos(fcut_dtau*sample_time*sqrt(1-lpf_damping^2));
B2_lpf_dtau = exp(-2*lpf_damping*fcut_dtau*sample_time);
A_lpf_dtau = 1 + B1_lpf_dtau + B2_lpf_dtau;

%% Musculoskeletal Parameters
set_musculoskeletal_params

%% Neural Control Parameters
set_neural_ctrl_params;


