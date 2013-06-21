% Control start parameters
control_start_time = 3;
sagittal_starting_time = 8;
sagittal_torque_ramp_time = sagittal_starting_time+6;
lateral_torque_ramp_time = control_start_time+4;

% Second derivative signal cutoff frequency
fcut_acceleration = 100;

% Sagittal motors
max_sagittal_torque = 150; % Nm

% SEA control params
f_cutoff_d = 300;
f_cutoff_sd = 100;
kp_sea_torque = 2.4;
kd_sea_torque = 0.7*2*sqrt(k_leg_spring*j_motor_reflected) / k_leg_spring; % Critical damping / spring_stiffness

% SEA position control params
kp_sea_position = 0.1*k_leg_spring; % Normalized by spring stiffness
td_sea_position = 2*sqrt(k_leg_spring*j_motor_reflected) / kp_sea_position; % Critical damping / kp
kd_sea_position = kp_sea_position * td_sea_position;
ti_sea_position = 100e-3;
ki_sea_position = 0*kp_sea_position / ti_sea_position;
i_limit_sea_position = 6*1.2; % 120% of max output

% SEA velocity control params
kp_velocity = 1;
td_velocity = 10e-3;
kd_velocity = kp_velocity * td_velocity;

% Lateral hip PID control params
hip_gravity_compensation = 20*9.8*0.2; % hip_mass * gravity * lever_distance
max_torque_lateral = 3 * hip_gravity_compensation; 
kp_lateral = hip_gravity_compensation / (1.25*pi/180); % gravitational force at 1.25 degrees error = weight(kg) * gravity(m/s) * lever_distance(m) / (rad_to_deg constant)
kd_lateral = 0.9 * 2*sqrt(((2*pi*4)^2*(20*0.2^2))*(20*0.2^2)); % 90 percent of critical damping
ti_lateral = 100e-3;
ki_lateral = kp_lateral / ti_lateral;
i_limit_lateral = 1.2*max_torque_lateral; % 120% of max output (double the amount of torque needed to compensate hip weight) 

% Torso Pitch PID control params
kp_pitch =0.6;
kd_pitch = 0.01*2*sqrt(9.8*0.2);
desired_torso_pitch = -9*pi/180;

% Sine Wave Walk Position params
A_angle_h = 20*pi/180;                         % Hip angle wave amplitude
w_angle_h = (1/4)*2*pi;                                  % Hip angle wave frequency
phase_h = 0;
A_angle_k = 20*pi/180;                         % Knee angle wave amplitude
phase_k = pi/2;
angle_midpoint_k = 120*pi/180;
angle_midpoint_h = 180*pi/180;

% Sine Wave Walk Behavior PD params
kp_h_sine_walk = 400;                               % Proportional PD constant
td_h_sine_walk = 80e-3;
kd_h_sine_walk = td_h_sine_walk*kp_h_sine_walk;                   % Derivative PD constant
kp_k_sine_walk = 400;                       % Proportional PD constant
td_k_sine_walk = 80e-3;
ki_k_sine_walk = 1;
kd_k_sine_walk = td_k_sine_walk*kp_k_sine_walk;    % Derivative PD constant

% Hip roll position params
A_angle_lat = 10*pi/180;
w_angle_lat = w_angle_h;
angle_midpoint_lat = 5*pi/180;

% Hip roll behavior PD params
kp_lat = 100;
td_lat = 100e-3;
kd_lat = td_lat*kp_lat;
t_lat = 33; % seconds before diminishing lateral motors


% UMich Control Params
umich_kp1 = 100;
umich_kp2 = 100;
umich_kd1 = 30;
umich_kd2 = 30;
umich_sat_val1 = 3;
umich_swap = 0;
umich_s_mode = 3;
umich_scuff1 = 18;
umich_scuff2 = 18;