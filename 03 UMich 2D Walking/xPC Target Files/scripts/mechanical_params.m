k_leg_spring = 4118.3;
j_rotor = k_leg_spring / (2*pi*28.2)^2 / LEG_MTR_GEAR_RATIO^2; % Effective rotor inertia = k_leg_spring / (2*pi*f_nat)^2 / gear_ratio^2 [f_nat = natural frequency obtained from vibration of SEA springs]
j_motor_reflected = j_rotor * LEG_MTR_GEAR_RATIO^2; % Reflected motor inertia
boom_mount_angle = 7.2824 * pi/180; % Taken from SolidWorks model