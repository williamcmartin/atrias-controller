%% Parameters for control loops

% Control loop start time
control_start_time = 9;
sagittal_starting_time = control_start_time+4;
sagittal_torque_ramp_time = sagittal_starting_time+5;
lateral_torque_ramp_time = control_start_time+2;

% SEA control params
max_sagittal_loaded_torque = LEG_MTR_MAX_TORQUE;
max_sagittal_unloaded_torque = LEG_MTR_MAX_CONT_TORQUE; % Nm
%-- Low Pass filter for acceleration
fcut_acceleration = 60*(2*pi); % Hz, Low pass filter cutoff frequency when calculating acceleration from velocity
lpf_damping = sqrt(2)/2; % butterworth damping ratio
B1_lpf_accel = -2*exp(-lpf_damping*fcut_acceleration*sample_time)*cos(fcut_acceleration*sample_time*sqrt(1-lpf_damping^2));
B2_lpf_accel = exp(-2*lpf_damping*fcut_acceleration*sample_time);
A_lpf_accel = 1 + B1_lpf_accel + B2_lpf_accel;
%-- Low Pass filter for torque derivative
fcut_dtau = 20*(2*pi); % Hz, Low pass filter cutoff frequency when calculating acceleration from velocity
lpf_damping = sqrt(2)/2; % butterworth damping ratio
B1_lpf_dtau = -2*exp(-lpf_damping*fcut_dtau*sample_time)*cos(fcut_dtau*sample_time*sqrt(1-lpf_damping^2));
B2_lpf_dtau = exp(-2*lpf_damping*fcut_dtau*sample_time);
A_lpf_dtau = 1 + B1_lpf_dtau + B2_lpf_dtau;
%-- PD gains
kp_sea_torque_flight = 2.4;
kp_sea_torque_stance = 8;
kd_damping = sqrt(2)/2;
kd_sea_torque_flight = kd_damping*2*sqrt(k_sea.*j_segments) ./ k_sea; % Critical damping / spring_stiffness
kd_sea_torque_stance = kd_damping*2*sqrt(k_sea.*(4.4)) ./ k_sea; % Critical damping / spring_stiffness
%-- Feedforward
sea_moving_friction = [0 0 0 0]; % Nm/(rad/s)
sea_offset_friction = [7.659 -6.198 6.447 -6.594]; % Nm
sea_static_friction = [18.69 26.08 25.95 26.8]; % Nm
k_ff = 1; % amount of feedforward to use
%-- Thresholds for activating SEA control
stance_flight_torque_threshold = 40*ones(1,4); % Nm, minimum measured torque to use large PD gains
sea_control_torque_cmd_small_threshold = 1*ones(1,4); %Nm, minimum commanded torque to activate sea control

% Lateral hip PID control params
hip_gravity_compensation = 20*9.8*0.2; % hip_mass * gravity * lever_distance
max_torque_lateral = 3 * hip_gravity_compensation; 
kp_lateral = 1500;%hip_gravity_compensation / (1.25*pi/180); % gravitational force at 1.25 degrees error = weight(kg) * gravity(m/s) * lever_distance(m) / (rad_to_deg constant)
kd_lateral = 10;%0.9 * 2*sqrt(((2*pi*4)^2*(20*0.2^2))*(20*0.2^2)); % 90 percent of critical damping
ti_lateral = 100e-3;
ki_lateral = 0;%kp_lateral / ti_lateral;
i_limit_lateral = 1.2*max_torque_lateral; % 120% of max output (double the amount of torque needed to compensate hip weight) 

% optimal motor torque distribution
lambda1 = 10; % hip torque 
lambda2 = 1;  % leg force

% Leg Angle Control
kp_leg_angle = 300;
kd_leg_angle = 30;
max_leg_angle = 220*pi/180;
min_leg_angle = 140*pi/180;

% virtual spring law
l0_virtual = 0.96;
l_retract = 0.90;
kp_virtual = 20000;%30*m_total*g / l0_virtual; % dimensionless stiffness: k*l_0 / m*g
kd_virtual = 0*kp_virtual;
kd_flight = 750;
kp_flight_max = 30000;
kp_flight_min = 5000;

% contact estimation
fcut_contact = 600;
contact_threshold = 0.20;
loaded_threshold = 0.35;

% posture control
desired_torso_angle = 0*pi/180;
kp_torso = 175;
td_torso = 75e-3;
kd_torso = td_torso*kp_torso;

% raibert hopper params
l_max = 0.96;
l_min = 0.4;
t_flight = 0.050;
dt_thrust = 0.120;
F_thrust = 700;
alpha_min = 50*pi/180;
x_limit = l0_virtual*cos(alpha_min);
dx_avg_desired = 0;
k_placement = 0.37;
dx_avg_samples = 0.100/sample_time;

