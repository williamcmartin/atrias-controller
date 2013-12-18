%% Parameters for control loops

% Control loop start time
control_start_time = 3;
sagittal_starting_time = 6;
sagittal_torque_ramp_time = sagittal_starting_time+5;
lateral_torque_ramp_time = control_start_time+2;

% SEA control params
max_sagittal_torque = 150; % Nm
fcut_acceleration = 50; % Hz, Low pass filter cutoff frequency when calculating acceleration from velocity
kp_sea_torque = 2.4;
kd_sea_torque = 0.9*2*sqrt(k_sea*j_leg_reflected) / k_sea; % Critical damping / spring_stiffness
k_ff = 0.11;

% Sine Wave Walk Position params
A_angle_h = 20*pi/180;                         % Hip angle wave amplitude
w_angle_h = (1/4)*2*pi;                                  % Hip angle wave frequency
phase_h = 0;
A_angle_k = 20*pi/180;                         % Knee angle wave amplitude
phase_k = pi/2;
angle_midpoint_k = 120*pi/180;
angle_midpoint_h = 180*pi/180;

% Sine Wave Walk Behavior PD params
kp_h_sine_walk = 0.5*m_total*g;                               % Proportional PD constant
td_h_sine_walk = 80e-3;
kd_h_sine_walk = td_h_sine_walk*kp_h_sine_walk;                   % Derivative PD constant
kp_k_sine_walk = 0.5*m_total*g;                       % Proportional PD constant
td_k_sine_walk = 80e-3;
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

% Lateral hip PID control params
hip_gravity_compensation = 20*9.8*0.2; % hip_mass * gravity * lever_distance
max_torque_lateral = 3 * hip_gravity_compensation; 
kp_lateral = hip_gravity_compensation / (1.25*pi/180); % gravitational force at 1.25 degrees error = weight(kg) * gravity(m/s) * lever_distance(m) / (rad_to_deg constant)
kd_lateral = 0.9 * 2*sqrt(((2*pi*4)^2*(20*0.2^2))*(20*0.2^2)); % 90 percent of critical damping
ti_lateral = 100e-3;
ki_lateral = kp_lateral / ti_lateral;
i_limit_lateral = 1.2*max_torque_lateral; % 120% of max output (double the amount of torque needed to compensate hip weight) 