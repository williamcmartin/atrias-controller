%%% Parameters for the mechanical model of ATRIAS
% All units are SI

%% Environment
g = 9.803; % m/s

%% Boom
m_boom = 4.49; % kg
l_boom = 1.767; % m, length of boom
h_boom = 0.99; % m, height of boom center
l_yaw_center_to_pelvis = 1.978; % m, distance from center of boom circle to unpitched pelvis
boom_pelvis_offset_angle = 0.174439; % rad, angle offset between above line and boom roll
boom_mount_angle = 7.2824 * pi/180; % rad, angle offset due to boom mount
d_horizontal_mount_offset = 0.22339; % m, horizontal distance from center of boom attachment to frontal centerline
d_vertical_mount_offset = d_horizontal_mount_offset * tan(boom_mount_angle); % m, vertical distance from center of boom attachment to frontal centerline
l_boom_projected = l_boom + norm([d_horizontal_mount_offset, d_vertical_mount_offset]) ; % distance of boom projected to frontal centerline

%% Lateral Motion
lateral_motor_efficiency = 0.65;
lateral_offset = 0.1831; % m
r_hip_gearhead = 0.009525;
r_hip_shaft = 0.542925;
N_hip = r_hip_shaft / r_hip_gearhead;

%% Series Elastic Actuators
% (old values: 4118.3, [4255.0 4525.3 4372.1 4322.4])
% [Nm/rad] (RB RF LB LF)
k_sea_low = [3343; 3825; 3476; 3905]; 
k_sea_high = [4255.0; 4255.0; 4372.1; 4322.4];
k_sea = k_sea_low;

%% Saggital Motion
m_leg_motor = 18; % kg
com_leg_motor = [0, lateral_offset-0.0149, 0.029]; % m, Coordinates from pelvis for left leg. Flip y coordinate for right leg.
i_leg_motor = [0.29, 0.27,  0.10];
j_rotor = 1.5e-3;
j_motor = j_rotor*LEG_MTR_GEAR_RATIO^2;
j_leg = 2*0.147;
j_segments = [0.145 0.155 0.145 0.155];
% Effective inertia = k_leg_spring / (2*pi*f_nat)^2 / gear_ratio^2 [f_nat = natural frequency obtained from vibration of SEA springs]
%sagittal_motor_efficiency = 0.85;

%% Legs
m_leg = 2.3438; % kg
l_seg = 0.5; % m
l_seg_short = 0.4; % m
d_ankle_to_foot = 0.0245; % m
l_seg_lower = 0.09 + d_ankle_to_foot; % m

%% Full Robot
m_total_real = 62.591; % kg (measured on force plate with boom attached)
d_vertical_mount_to_hip = 0.3176; % m
d_vertical_boom_hip_offset = d_vertical_mount_to_hip + d_vertical_mount_offset; % distance from (boom attachment projected onto frontal center) to (hip rotation point)

%% Counterweight
m_counter_weight = 24.05; % kg
m_total_with_counterweight = m_total_real - m_counter_weight; % kg
g_reduced = (m_total_real-m_counter_weight)/m_total_real*g; % effective gravity with counterweight installed

%% Torso
m_torso = m_total_real - 2*(m_leg_motor+m_leg);
com_torso = [0.01, 0, 0.2885]; % m, Coordinates from pelvis.
i_torso = [1.5, 2.2, 1.5];
torso_centerline_roll_offset_angle = atan2(-com_torso(2), com_torso(3));
torso_centerline_pitch_offset_angle = atan2(com_torso(1), com_torso(3)); % IMU is 1.1115 degrees higher than boom
pelvis_to_imu = [0.11988, -0.16071+0.07366/2, 0.47675];

%% Approximate (static) total system COM distances and inertia
d_vertical_com = norm(com_torso([1 3]))*m_torso/m_total_real; % m, Distance above saggital rotation point. 
d_vertical_mount_to_com = d_vertical_mount_to_hip - d_vertical_com; % m
d_vertical_boom_com_offset = d_vertical_mount_offset + d_vertical_mount_to_com; % distance from (boom attachment projected onto frontal center) to (system center of mass)
d_vertical_com_to_trunk_com = norm(com_torso([1 3]))-d_vertical_com;
i_robot = 2*(m_leg_motor+m_leg)*d_vertical_com^2 + m_torso*d_vertical_com_to_trunk_com^2 + i_torso(2) + 2*i_leg_motor(2); % kg m^2, y principal component
