%% Parameters for control loops

% Control loop start time
control_start_time = 3;
sagittal_starting_time = 6;
sagittal_torque_ramp_time = sagittal_starting_time+5;
lateral_torque_ramp_time = control_start_time+2;

% SEA control params
max_sagittal_torque = 200; % Nm
fcut_acceleration = 100; % Hz, Low pass filter cutoff frequency when calculating acceleration from velocity
kp_sea_torque = 2.4;
kd_sea_torque = 0.9*2*sqrt(k_sea*j_leg_reflected) / k_sea; % Critical damping / spring_stiffness
k_ff = 0.11;

% Lateral hip PID control params
hip_gravity_compensation = 20*9.8*0.2; % hip_mass * gravity * lever_distance
max_torque_lateral = 3 * hip_gravity_compensation; 
kp_lateral = hip_gravity_compensation / (1.25*pi/180); % gravitational force at 1.25 degrees error = weight(kg) * gravity(m/s) * lever_distance(m) / (rad_to_deg constant)
kd_lateral = 0.9 * 2*sqrt(((2*pi*4)^2*(20*0.2^2))*(20*0.2^2)); % 90 percent of critical damping
ti_lateral = 100e-3;
ki_lateral = kp_lateral / ti_lateral;
i_limit_lateral = 1.2*max_torque_lateral; % 120% of max output (double the amount of torque needed to compensate hip weight) 

% Leg Angle Control
kp_leg_angle = 10/(0.5*pi/180);
td_leg_angle = 30e-3;
kd_leg_angle = td_leg_angle*kp_leg_angle;

% virtual spring law
l0_virtual = 0.96; 
k_virtual = 30*m_total*g / l0_virtual; % dimensionless stiffness: k*l_0 / m*g = 10