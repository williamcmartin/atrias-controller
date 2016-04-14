%% Kalman Filtering parameters - Fourbar Gears
A_kalman_fourbar_gear = [1, sample_time; 0, 1];
B_kalman_fourbar_gear = [0, 0, 0; -1/j_motor, LEG_MTR_GEAR_RATIO/j_motor, -1/j_motor*(LEG_MTR_GEAR_RATIO-1)*j_rotor/i_robot]*sample_time;
C_kalman_fourbar_gear = [1, 0; 1, 0];
G_kalman_fourbar_gear = B_kalman_fourbar_gear / sqrt(sample_time);
R_kalman_absolute_fail = (90*pi/180)^2;
R_kalman_absolute_normal = (10^-3*pi/180)^2;
R_kalman_incremental_unloaded = (5*10^-3*pi/180)^2 + (LEG_INC_ENCODER_RAD_PER_TICK)^2;
R_kalman_incremental_loaded = (2.5*pi/180)^2 + (LEG_INC_ENCODER_RAD_PER_TICK)^2;
Q_kalman_spring_torque = 20^2;
Q_kalman_rotor_torque = 5^2;
Q_kalman_trunk_torque = 0.2^2*Q_kalman_GRF + 4*Q_kalman_rotor_torque + 4*Q_kalman_spring_torque;
P0_kalman_fourbar_gear = diag([R_kalman_absolute_normal, 2*R_kalman_absolute_normal/sample_time^2]);
max_absolute_measurement_innovation = 15*pi/180;
kalman_load_to_deflect_transmission = 500; % Nm