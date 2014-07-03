%%% Parameters for the mechanical model of ATRIAS

%% Environment
g = 9.81; % m/s

%% Boom
boom_mount_angle = 7.2824 * pi/180; % rad
m_boom = 4.49; % kg
l_boom = 1.8161; % m
boom_mount_to_center_diagonal = 0.2243; % m
m_counter_weight = 30; % kg
boom_height = 1;

%% Series Elastic Actuators
k_sea = [4255.0 4525.3 4372.1 4322.4]; % [Nm/rad] (RB RF LB LF) (old value; 4118.3)

%% Saggital Motion
j_rotor = 1.5e-3;
j_motor = j_rotor*LEG_MTR_GEAR_RATIO^2;
j_leg = 2*0.147;
j_segments = [0.145 0.155 0.145 0.155];
% RB: 27.83, RF: 27.83, LB: 26.37-27.34, LF: 26.37-27.34
% k_sea ./ (2*pi*25.72)^2 ; % Effective inertia = k_leg_spring / (2*pi*f_nat)^2 / gear_ratio^2 [f_nat = natural frequency obtained from vibration of SEA springs]
m_leg_motor = 20; % kg

%% Lateral Motion
lateral_offset = 0.2; % m
r_hip_gearhead = 0.009525;
r_hip_shaft = 0.542925;
N_hip = r_hip_shaft / r_hip_gearhead;

%% Legs
l_seg = 0.5; % m

%% Full Robot
m_total_real = 62.6; % kg
m_total = m_total_real - m_counter_weight; % kg
i_robot = 2.2; % kg m^2
d_com = 0.0879; % m (distance above saggital rotation point)
boom_mount_to_com = 0.2301; % m
g_reduced = (m_total_real-m_counter_weight)/m_total_real*g;