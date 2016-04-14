%% Parameters for control loops

% triangle wave generator
back_right_triangle_wave_speed = 40*pi/180; 
front_right_triangle_wave_speed = 40*pi/180;
back_left_triangle_wave_speed = 40*pi/180;
front_left_triangle_wave_speed = 40*pi/180;

back_right_triangle_amplitude = 20*pi/180;
front_right_triangle_amplitude = 20*pi/180;
back_left_triangle_amplitude = 20*pi/180;
front_left_triangle_amplitude = 20*pi/180;

front_left_triangle_wave_midpoint = 140*pi/180;
back_right_triangle_wave_midpoint = 220*pi/180;
front_right_triangle_wave_midpoint = 140*pi/180;
back_left_triangle_wave_midpoint = 220*pi/180;

front_left_triangle_period = 4*front_left_triangle_amplitude/front_left_triangle_wave_speed;
back_right_triangle_period = 4*back_right_triangle_amplitude/back_right_triangle_wave_speed;
front_right_triangle_period = 4*front_right_triangle_amplitude/front_right_triangle_wave_speed;
back_left_triangle_period = 4*back_left_triangle_amplitude/back_left_triangle_wave_speed;

% Sagittal PD control
kp_motor = 500;
kd_motor = 60e-3*kp_motor;

% Hip roll position params
A_angle_lat = 5*pi/180;
w_angle_lat = (1.5)*2*pi;
angle_midpoint_lat = 5*pi/180;


% Lateral hip PID control params
hip_gravity_compensation = 20*9.8*0.2; % hip_mass * gravity * lever_distance
max_torque_lateral = 3 * hip_gravity_compensation; 
kp_lateral = 500;
kd_lateral = 20;
minimum_lateral_angle = -10*pi/180;
maximum_lateral_angle = 18*pi/180;
