%% Assign Mechanical and Muscle-Layer Parameters
% Needs param and paramFmax

%% Environment
g =  9.81;

%% Sensors
sample_time = 0.001;
lpf_damping = sqrt(2)/2; % Butterworth filter damping
fcut_velocity = 100*(2*pi); % Cutoff frequency for velocities
B1_lpf_velocity = -2*exp(-lpf_damping*fcut_velocity*sample_time)*cos(fcut_velocity*sample_time*sqrt(1-lpf_damping^2));
B2_lpf_velocity = exp(-2*lpf_damping*fcut_velocity*sample_time);
A_lpf_velocity = 1 + B1_lpf_velocity + B2_lpf_velocity;


%% Foot Contact
contactThr = 0.35;
releaseThr = 0.15;

%% SEA Control
MTR_MAX_CURRENT = 155.0; %Maximum motor current 
LEG_CURRENT_LIMIT = 140; %45 for swing is safe
LEG_MOTOR_CONSTANT = 0.119;
LEG_MTR_GEAR_RATIO = 50;
max_sagittal_loaded_torque = min(MTR_MAX_CURRENT, LEG_CURRENT_LIMIT)*LEG_MOTOR_CONSTANT*LEG_MTR_GEAR_RATIO;
max_sagittal_unloaded_torque = 1.5*178.5; % Nm

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

%-- Saturation for dtau_des
dtau_des_max = 5/0.001;

%-- SEA Gains
kp_sea_torque = [0.3, 0.3, 6.0, 6.0];
kd_sea_torque = [0.0025, 0.0025, 0.1, 0.1];
% kp_sea_torque = 0.25*ones(1,4);
% kd_sea_torque = 0.0025*ones(1,4);
% kp_sea_torque = 6*ones(1,4);
% kd_sea_torque = 0.1*ones(1,4);
gain_nodes_sea_torque = [0,65,350,700];

%-- Updated spring constants
k_sea = [4118.3 4118.3 4118.3 4118.3]; % [4255.0 4525.3 4372.1 4322.4]; % [Nm/rad] (RB RF LB LF) (old value; 4118.3)

%-- Feedforward
sea_sliding_friction = [0 0 0 0]; % Nm/(rad/s)
sea_extra_sliding_friction = 0.001*ones(1,4); % Nm/(rad/s)
sea_offset_friction = [7.659 -6.198 6.447 -6.594]; % Nm
sea_coulomb_friction = [18.69 26.08 25.95 26.8+5]; % Nm
sea_coulomb_friction_direction_switch_sensitivity = [15 5 15 15];
k_ff = 0.9; % amount of feedforward to use

%-- Thresholds for activating SEA control
loaded_unloaded_torque_threshold = 65*ones(1,4); % Nm, minimum measured torque to use large PD gains
sea_control_torque_cmd_small_threshold = 1*ones(1,4); %Nm, minimum commanded torque to activate sea control

% kp_sea_torque = 7;
% kd_sea_torque = 9e-3*kp_sea_torque;
% k_ff = 0.95;

%-- Low Pass filter for torque derivative
fcut_dtau = 20*(2*pi); % Hz, Low pass filter cutoff frequency when calculating acceleration from velocity
lpf_damping = sqrt(2)/2; % butterworth damping ratio
B1_lpf_dtau = -2*exp(-lpf_damping*fcut_dtau*sample_time)*cos(fcut_dtau*sample_time*sqrt(1-lpf_damping^2));
B2_lpf_dtau = exp(-2*lpf_damping*fcut_dtau*sample_time);
A_lpf_dtau = 1 + B1_lpf_dtau + B2_lpf_dtau;


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
lateral_target_angle_left = -6*pi/180; % -35 degrees approx. cancels sagittal loads
lateral_target_angle_right = 6*pi/180; % +38 degrees approx. cancels sagittal loads
lateral_transition_force = 150;

% Lateral limits
minimum_lateral_angle = -9.5*pi/180;
maximum_lateral_angle = 18*pi/180;



%% Torque Distribution
% tau_saturation = 600; %[Nm] for torque distribution, 
tau_saturation_min = 350;
tau_saturation_max = 600;
tau_saturation_x = [0,contactThr,0.5,1];
tau_saturation_y = [tau_saturation_min tau_saturation_min tau_saturation_max tau_saturation_max];
lambda_knee = 1;      % NOT FINAL SATURATION (LEG_MTR_MAX_TORQUE)
lambda_hip = 1000;

%% PD Joint Limit Avoidance
kp_pd_avoid_limits = 1000;
kd_pd_avoid_limits = 30;

min_splay_angle = 45*pi/180;  % DEFINES STRAIGHT LEG LENGTH  delta_phi_min = 25.5*pi/180;
min_splay_buffer = 0*pi/180;
min_splay_dropoff = 1*pi/180;
kp_splay_min = kp_pd_avoid_limits;
kd_splay_min = kd_pd_avoid_limits;

delta_phi_max = 160*pi/180;
delta_phi_max_buffer = 20*pi/180;
delta_phi_max_dropoff = 5*pi/180;
kp_splay_max = kp_pd_avoid_limits;
kd_splay_max = kd_pd_avoid_limits;

phi_thigh_min = 72.5*pi/180;
phi_thigh_min_buffer = 20*pi/180;
phi_thigh_min_dropoff = 10*pi/180;
kp_thigh_min = kp_pd_avoid_limits;
kd_thigh_min = kd_pd_avoid_limits;

phi_thigh_max = 225*pi/180;
phi_thigh_max_buffer = 20*pi/180;
phi_thigh_max_dropoff = 10*pi/180;
kp_thigh_max = kp_pd_avoid_limits;
kd_thigh_max = kd_pd_avoid_limits;

phi_shin_min = 135*pi/180;
phi_shin_min_buffer = 20*pi/180;
phi_shin_min_dropoff = 10*pi/180;
kp_shin_min = kp_pd_avoid_limits;
kd_shin_min = kd_pd_avoid_limits;

phi_shin_max = 287.5*pi/180;
phi_shin_max_buffer = 20*pi/180;
phi_shin_max_dropoff = 10*pi/180;
kp_shin_max = kp_pd_avoid_limits;
kd_shin_max = kd_pd_avoid_limits;


%% Motor Dynamics
% Saggital
k_leg_spring = 4118.3;
b_leg_spring = 0.01*sqrt(k_leg_spring*0.5*.25^2);
N_sag = 50;
mu_motor = 0.90;
b_rotor = 60/(2*pi)*9.725e-5;
i_rotor = 1.5e-3; 
i_rotor_moments = [0 0 i_rotor];
i_motor_reflected = i_rotor * N_sag^2;
r_rotor = 0.001;
m_rotor = 1e-5;
r_virtual_gear = N_sag*r_rotor;
m_virtual_gear = 1e-5;
i_virtual_gear = [0 0 1e-5];
m_output_gear = 1e-5;
i_output_gear = [0 0 1e-5];
m_gearing = m_rotor+m_virtual_gear+m_output_gear;
Kt_leg = 0.119; % current constant
Kb_leg = 0.121;
R_leg = 0.052;
L_leg = 0.102e-3;
max_voltage_leg = 50;
max_current_leg = 120; %155 in daq_params
LEG_MTR_MAX_TORQUE = max_current_leg * Kt_leg * N_sag; % Nm

% Lateral
r_hip_gearhead = 0.009525;
r_hip_shaft = 0.542925;
N_h = r_hip_shaft / r_hip_gearhead;
mu_hmotor = 0.90;
b_hmotor = 0;
i_hrotor_moments = [0 0 1.5e-3];
max_current_hip = 60;
Kt_hip = 0.184;
HIP_MTR_MAX_TORQUE = max_current_hip*Kt_hip*N_h;

%% Robot Leg Geometry
l_seg = 0.5;
l_rad = 0.03;
% Thigh
com_thigh = [0.0160 -0.1822 0];
m_thigh = 0.69;
i_thigh_moments = [0.02 0 0.02];
i_thigh_products = [0 0 0];
% Lower Leg
lowerleg_12 = 0.40;
com_lowerleg = [0 -0.1513 0];
m_lowerleg = 0.4438;
i_lowerleg_moments = [0.01 0 0.01];
i_lowerleg_products = [0 0 0];
% Four Bar Link
com_fblink = [0 -0.1137 0];
m_fblink = 0.46;
i_fblink_moments = [0.01 0 0.01];
i_fblink_products = [0 0 0];
% Shin
shin_12 = 0.40;
com_shin = [0.0215 -0.1503 0];
m_shin = 0.75;
i_shin_moments = [0.02 0 0.02];
i_shin_products = [0 0 0];

%% Mechanical Limits Model
k_phi = 5000; % N/m
v_phi_max = 1/60; % rad/s
delta_phi_min = 25.5*pi/180;
phi_roll_max = pi + 16*pi/180;
phi_roll_min = pi - 9*pi/180;
phi_max_collision = -5*pi/180;

%% Hip Shaft
leg_offset = 0.1831;
hshaft_12 = [0 0 leg_offset];
com_hshaft = [0 0.029 leg_offset-0.0149];
m_hshaft = 20;
i_hshaft_moments = [0.29 0.10 0.27];
i_hshaft_products = [0 0 0.1];

%% Boom setup
pitch_mount_angle = 7.2824 * pi/180;
% boom tube
l_boom = 1.8161;
boom_12 = [0 0 -l_boom];
com_boom = [0 0 -1.33];
m_boom = 4.49;
i_boom_moments = [3.9 3.9 0];
i_boom_products = [0 0 0];
% yaw shaft
yshaft_12 = [0 0.9906 0];
com_yshaft = [0 1 -0.15];
m_yshaft = 12.89;
i_yshaft_moments = [8 3.3 4.9];
i_yshaft_products = [-3 0 0];
% boom base
base_12 = [0 0.0286 0];
% counter weight
counterweight_mass = 30;

%% Torso Dynamics
boom_mount_to_hip = 0.318;
boom_mount_to_center = 0.2225;
boom_mount_to_center_diagonal = boom_mount_to_center / cos(pitch_mount_angle);
torso_12 = [0 -boom_mount_to_hip -boom_mount_to_center];
com_torso = [0 0.05 -0.1577];
m_torso = 17.9;
i_torso_moments = [1.5 1.5 2.2];
i_torso_products = [0 0 0];
winch_hook_offset = [0 0.375 -0.2225];
d_hip_com_to_torso_com = boom_mount_to_hip - com_hshaft(2) + com_torso(2);

%% Total masses and inertias
num_legs = 2;
m_total = num_legs*(m_hshaft + m_thigh + m_lowerleg + m_shin + m_fblink + 2*m_gearing) + m_torso;
m_leg = m_thigh + m_lowerleg + m_shin + m_fblink;
m_hip = m_hshaft + m_leg;
i_motor = i_motor_reflected + m_leg/2*l_seg^2;
i_leg = m_leg/2*l_seg^2;
d_com = (d_hip_com_to_torso_com*m_torso)/(m_torso + num_legs*m_hshaft);
boom_mount_to_com = boom_mount_to_hip - d_com;
i_robot = i_torso_moments(3) + m_torso*(d_hip_com_to_torso_com - d_com)^2 + num_legs*m_hshaft*d_com^2 + num_legs*i_hshaft_moments(1);


%% Winch Dynamics
winch_gravity_comp = m_total*g*l_boom;
kp_winch = winch_gravity_comp/(3*pi/180);
td_winch = 50e-3;
kd_winch = td_winch*kp_winch;


%% GROUND CONTACT DYNAMICS %
% vertical component
% stiffness of vertical ground interaction
k_gn = m_total*g/0.01; %[N/m]

% max relaxation speed of vertical ground interaction
v_gn_max = 0.03; %[m/s]


% horizontal component
% sliding friction coefficient
mu_slide = 0.8;

% sliding to stiction transition velocity limit
vLimit = 0.01; %[m/s]

% stiffness of horizontal ground stiction
k_gt = m_total*g/0.1; %[N/m] 0.01

% max relaxation speed of horizontal ground stiction
v_gt_max = 0.03; %[m/s] 0.03

% stiction to sliding transition coefficient
mu_stick = 0.9;

k_gn    = k_gn*2; %for point-feet.
k_gt    = k_gt*2;

%% Motor Friction
% Vector order =  [RBack RFront LBack LFront]
% Specified after the gear reduction
breakaway_friction = [25 25 25 25]; 
coulomb_friction = [20 20 20 20]; 
viscous_friction = [0.001 0.001 0.001 0.001];
friction_linear_zone = [0.5 0.5 0.5 0.5].*pi/180; % velocity zone before full stiction is applied



%% Ground Profile
v_plateYaw = ground.v_plateYaw(1,:); 
v_plateH = ground.v_plateH*(max_floor_diff/0.1); 
v_plateS = [atan2(diff(v_plateH),diff(v_plateYaw)),0];

% Visualization
floor_tile_width = v_plateYaw(3); %30*pi/180;
floor_zero_height = 0.25;
tile_cross_section = [1.5 floor_zero_height; 1.5 0; 3 0; 3 floor_zero_height];
tile_delta = [0 1; 0 0; 0 0; 0 1];
% tile_scale_visual = v_plateH(2:2:end);
% tile_yaws = v_plateYaw(2:2:end);

n_extra_tiles = 10;
n_tiles = length(v_plateH(2:2:end)) + n_extra_tiles;
tile_yaws = [v_plateYaw(2:2:end), ...
             repmat(v_plateYaw(60),1,n_extra_tiles) + floor_tile_width*(1:n_extra_tiles)];
tile_scale_visual = [v_plateH(2:2:end), repmat(v_plateH(60),1,n_extra_tiles)];

% sections = repmat(tile_cross_section,1,1,length(tile_scale_visual)) + ... 
%            bsxfun(@times,repmat(tile_delta,1,1,length(tile_scale_visual)),...
%                repmat(permute(tile_scale_visual,[1,3,2]),4,2));
%            
% for i = 1:length(tile_scale_visual) %reverse order of cross-section
%    if tile_scale_visual(i)<-0.03        %if height is negative
%     sections(:,:,i) = sections(end:-1:1,:,i);
%    end    
% end


% cmap = jet(128);
cmap = colormap('jet');
close(gcf);

% tile_scale_range = max(tile_scale_visual) - min(tile_scale_visual);
% tile_color_idx = floor(((tile_scale_visual - min(tile_scale_visual))/...
%     (max(tile_scale_visual- min(tile_scale_visual))+eps))*length(cmap)) + 1;
% tile_color = cmap(tile_color_idx,:);





%% Colors
red = [252 18 0] / 255;
yellow = [255 253 72] / 255;
orange = [253 180 72] / 255;
black = [72 72 72] / 255;
gray = [170 170 170] / 255;
light_blue = [106 165 217] / 255;
light_gray = [220 220 220] / 255;
lighter_gray = [240 240 240] / 255;


red = [252 18 0] / 255;
yellow = [255 253 72] / 255;
orange = [253 180 72] / 255;
black = [72 72 72] / 255;
gray = [170 170 170] / 255;
light_blue = [106 165 217] / 255;
light_gray = [220 220 220] / 255;
lighter_gray = [240 240 240] / 255;
% black = [255 255 255] / 255;
white = [25 25 25] / 255;
blue = [125 194 255] / 255;


shin_color_d = yellow; 
fblink_color_d = yellow; 
thigh_color_d = black; 
lowerleg_color_d = black;
hshaft_color_d = orange;
torso_color_d = gray;
boom_color_d = lighter_gray;
yshaft_color_d = light_gray;
base_color_d = black;
floor_color_d = light_blue;
% floor_color_d = black;


% tile_color = cmap(floor(((tile_scale_visual - min(tile_scale_visual))/...
%     (max(tile_scale_visual- min(tile_scale_visual))+eps))*length(cmap))+1,:);
tile_color1 = yellow; %[40 40 255] / 255;
tile_color2 = [0         0    0.5625];
tile_color = zeros(length(tile_scale_visual),3);
tile_color(1:2:end,:) = repmat(tile_color1,size(tile_color(1:2:end,:),1),1);
tile_color(2:2:end,:) = repmat(tile_color2,size(tile_color(2:2:end,:),1),1);



%% Musculoskeletal Parameters
ATRIAS_set_VMSM_vars;



