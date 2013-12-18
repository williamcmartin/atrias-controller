%%% Parameters for the mechanical model of ATRIAS

%% Environment
g = 9.81; % m/s

%% Boom
boom_mount_angle = 7.2824 * pi/180; % rad
m_boom = 4.49; % kg

%% Series Elastic Actuators
k_sea = 4118.3; % [Nm/rad]

%% Saggital Motors
j_rotor = 1.5e-3;
j_rotor_reflected = j_rotor * LEG_MTR_GEAR_RATIO^2;
j_leg = k_sea / (2*pi*27)^2 / LEG_MTR_GEAR_RATIO^2; % Effective rotor inertia = k_leg_spring / (2*pi*f_nat)^2 / gear_ratio^2 [f_nat = natural frequency obtained from vibration of SEA springs]
j_leg_reflected = j_leg * LEG_MTR_GEAR_RATIO^2; 
m_leg_motor = 20; % kg
i_motor = 4.3362; % kg m^2

%% Legs
l_seg = 0.5; % m

%% Full Robot
m_total = 64; % kg
i_robot = 2.2; % kg m^2