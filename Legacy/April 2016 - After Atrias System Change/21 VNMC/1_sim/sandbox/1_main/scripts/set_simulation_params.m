%% Assign Simulation Parameters


% ***** Need to define following variables before running this script: *****
%           
%           ground
%           paramIC
%           noise_on_off
%           noise_seed
%           noise_variance
%           max_floor_diff

%% Encoders
% sample_time = 0.001;

lpf_damping = sqrt(2)/2; % Butterworth filter damping
fcut_velocity = 100*(2*pi); % Cutoff frequency for velocities
B1_lpf_velocity = -2*exp(-lpf_damping*fcut_velocity*sample_time)*cos(fcut_velocity*sample_time*sqrt(1-lpf_damping^2));
B2_lpf_velocity = exp(-2*lpf_damping*fcut_velocity*sample_time);
A_lpf_velocity = 1 + B1_lpf_velocity + B2_lpf_velocity;

%% Noise
% noise_on_off = 0;
% noise_seed = 42;
% noise_variance = 1*pi/180;

%% Environment
% g =  9.81; %[m/s^2] gravity
% ts_data     = 0.01;
% ts_anim     = 0.01;
% sim_t = 60;


%% Motor Dynamics

% Saggital
% k_leg_spring = 4118.3;
b_leg_spring = 0.075*sqrt(k_leg_spring*0.5*.25^2);
N_sag = 50;
mu_motor = 0.90;
b_rotor = 60/(2*pi)*9.725e-5;
i_rotor = 1.5e-3; 
i_rotor_moments = [0 0 i_rotor];
i_motor_reflected = i_rotor * N_sag^2;
r_rotor = 0.001;
% m_rotor = 1e-5;
r_virtual_gear = N_sag*r_rotor;
% m_virtual_gear = 1e-5;
i_virtual_gear = [0 0 1e-5];
% m_output_gear = 1e-5;
i_output_gear = [0 0 1e-5];
% m_gearing = m_rotor+m_virtual_gear+m_output_gear;
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

% l_seg = 0.5;
l_rad = 0.03;

% Thigh
com_thigh = [0.0160 -0.1822 0];
% m_thigh = 0.69;
i_thigh_moments = [0.02 0 0.02];
i_thigh_products = [0 0 0];

% Lower Leg
lowerleg_12 = 0.40;
com_lowerleg = [0 -0.1513 0];
% m_lowerleg = 0.4438;
i_lowerleg_moments = [0.01 0 0.01];
i_lowerleg_products = [0 0 0];

% Four Bar Link
com_fblink = [0 -0.1137 0];
% m_fblink = 0.46;
i_fblink_moments = [0.01 0 0.01];
i_fblink_products = [0 0 0];

% Shin
shin_12 = 0.40;
com_shin = [0.0215 -0.1503 0];
% m_shin = 0.75;
i_shin_moments = [0.02 0 0.02];
i_shin_products = [0 0 0];

%% Virtual Leg Geometry

% min_splay_angle = 45*pi/180; % DEFINES STRAIGHT LEG LENGTH
                             % delta_phi_min = 25.5*pi/180;

% Shank segment
% l_v = l_seg*cos(min_splay_angle/2);  %CS1 (ankle joint) to C2 (knee joint)

% Thigh Segment
% D12_T = l_v; 
% D12_S = D12_T;

% Max Leg Length
% leg_0 = D12_S + D12_T; % [m] full leg length (from hip to ankle)


%% Mechanical Limits Model
k_phi = 5000; % N/m
v_phi_max = 1/60; % rad/s

phi_roll_max = pi + 16*pi/180;
phi_roll_min = pi - 9*pi/180;
phi_max_collision = -5*pi/180;

% delta_phi_min = 25.5*pi/180;
% delta_phi_max = 160*pi/180;
% phi_thigh_min = 72.5*pi/180;
% phi_thigh_max = 225*pi/180;
% phi_shin_min = 135*pi/180;
% phi_shin_max = 287.5*pi/180;


%% Hip Shaft
leg_offset = 0.1831;
hshaft_12 = [0 0 leg_offset];
com_hshaft = [0 0.029 leg_offset-0.0149];
% m_hshaft = 20;
i_hshaft_moments = [0.29 0.10 0.27];
i_hshaft_products = [0 0 0.1];


%% Boom setup

% pitch_mount_angle = 7.2824 * pi/180;

% boom tube
% l_boom = 1.8161;
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
% boom_mount_to_center = 0.2225;
% boom_mount_to_center_diagonal = boom_mount_to_center / cos(pitch_mount_angle);
torso_12 = [0 -boom_mount_to_hip -boom_mount_to_center];
com_torso = [0 0.05 -0.1577];
% m_torso = 17.9;
i_torso_moments = [1.5 1.5 2.2];
i_torso_products = [0 0 0];
winch_hook_offset = [0 0.375 -0.2225];
d_hip_com_to_torso_com = boom_mount_to_hip - com_hshaft(2) + com_torso(2);


%% Total masses and inertias
% num_legs = 2;
% m_total = num_legs*(m_hshaft + m_thigh + m_lowerleg + m_shin + m_fblink + 2*m_gearing) + m_torso;
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


%% Ground Contact Dynamics

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


%% Initial Conditions
v0                  = paramIC(1);              %[m/s] forward velocity
theta0              = paramIC(2)      *pi/180; %[rad] 
Lalpha0             = paramIC(3)      *pi/180; %[rad]  
LLength0            = paramIC(4);
Ralpha0             = paramIC(5)      *pi/180; %[rad]
RLength0            = paramIC(6);

Lthigh0             = Lalpha0 - theta0 - acos(LLength0) + pi/2;
Lshin0              = Lalpha0 - theta0 + acos(LLength0) + pi/2;
Rthigh0             = Ralpha0 - theta0 - acos(RLength0) + pi/2;
Rshin0              = Ralpha0 - theta0 + acos(RLength0) + pi/2;

thigh_initial_l     = Lthigh0;
shin_initial_l      = Lshin0;
thigh_initial_r     = Rthigh0;
shin_initial_r      = Rshin0;

globalYaw0          = 30*pi/180; % Should be large enough to ensure feet start with yaw > 0

% v_thigh_initial_r =  0; %pi/2;
% v_shin_initial_r =  0; %pi/2;
initial_boom_yaw = globalYaw0;
initial_boom_pitch = theta0; %(theta)
% initial_com_height = 1.05; %(1.2248)
% initial_com_height = 0.98; %(1.2248)
initial_com_height = IC_com_height; %0.95; %(1.2248)
initial_boom_roll = asin((initial_com_height + boom_mount_to_com + boom_mount_to_center*tan(pitch_mount_angle) - (base_12(2) + yshaft_12(2))) / (l_boom + boom_mount_to_center_diagonal));
initial_winch_angle = -12 * pi/180;
initial_hip_roll = 0*pi/180;
initial_boom_yaw_velocity = v0 / ((l_boom+boom_mount_to_center_diagonal)*cos(initial_boom_roll));
com_height_offset = boom_mount_to_com + boom_mount_to_center*tan(pitch_mount_angle) - (base_12(2) + yshaft_12(2));

% Virtual Leg Joint ICs (for visualization)
l_v = D12_T;
Lv120 = 2*asin((l_seg/l_v)*sin((pi-Lshin0+Lthigh0)/2));
Lv230 = Lthigh0 + (Lv120-(pi-Lshin0+Lthigh0))/2;
Rv120 = 2*asin((l_seg/l_v)*sin((pi-Rshin0+Rthigh0)/2));
Rv230 = Rthigh0 + (Rv120-(pi-Rshin0+Rthigh0))/2;


%% Ground Profile
v_plateYaw = ground.v_plateYaw(1,:); 
v_plateH = ground.v_plateH*(max_floor_diff/0.1); 
v_plateS = [atan2(diff(v_plateH),diff(v_plateYaw)),0];

% Visualization
floor_tile_width = v_plateYaw(3);
floor_zero_height = 0.5;
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

