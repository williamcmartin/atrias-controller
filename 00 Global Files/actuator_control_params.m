% Motor output ramp times
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
%-- Low Pass filter to reduce resonance
fcut_res = 20*(2*pi); % Hz, Low pass filter cutoff frequency when calculating acceleration from velocity
lpf_damping = 0.5;
B1_lpf_res = -2*exp(-lpf_damping*fcut_res*sample_time)*cos(fcut_res*sample_time*sqrt(1-lpf_damping^2));
B2_lpf_res = exp(-2*lpf_damping*fcut_res*sample_time);
A_lpf_res = 1 + B1_lpf_res + B2_lpf_res;
%-- Notch filter for output (flight 1)
notch_damping = 0.1;
fnotch_f1 = 27*(2*pi);
B1_notch_f1 = -2*exp(-notch_damping*fnotch_f1*sample_time)*cos(fnotch_f1*sample_time*sqrt(1-notch_damping^2));
B2_notch_f1 = exp(-2*notch_damping*fnotch_f1*sample_time);
A1_notch_f1 = -2*cos(fnotch_f1*sample_time);
A2_notch_f1 = 1;
K_notch_f1 = (1+B1_notch_f1+B2_notch_f1)/(1+A1_notch_f1+A2_notch_f1);
%-- Notch filter for output (flight 2)
notch_damping = 0.1;
fnotch_f2 = 21*(2*pi);
B1_notch_f2 = -2*exp(-notch_damping*fnotch_f2*sample_time)*cos(fnotch_f2*sample_time*sqrt(1-notch_damping^2));
B2_notch_f2 = exp(-2*notch_damping*fnotch_f2*sample_time);
A1_notch_f2 = -2*cos(fnotch_f2*sample_time);
A2_notch_f2 = 1;
K_notch_f2 = (1+B1_notch_f2+B2_notch_f2)/(1+A1_notch_f2+A2_notch_f2);
%-- Notch filter for output (flight 3)
notch_damping = 0.1;
fnotch_f3 = 16.5*(2*pi);
B1_notch_f3 = -2*exp(-notch_damping*fnotch_f3*sample_time)*cos(fnotch_f3*sample_time*sqrt(1-notch_damping^2));
B2_notch_f3 = exp(-2*notch_damping*fnotch_f3*sample_time);
A1_notch_f3 = -2*cos(fnotch_f3*sample_time);
A2_notch_f3 = 1;
K_notch_f3 = (1+B1_notch_f3+B2_notch_f3)/(1+A1_notch_f3+A2_notch_f3);
%-- PD gains
kp_sea_torque_flight = 0.3;
kp_sea_torque_stance = 8;
kd_sea_torque_flight = 0.3*sqrt(2)/2*2*sqrt(k_sea.*j_segments) ./ k_sea; % Critical damping / spring_stiffness
kd_sea_torque_stance = sqrt(2)/2*2*sqrt(k_sea.*(4.4)) ./ k_sea; % Critical damping / spring_stiffness
%-- Feedforward
sea_sliding_friction = [0 0 0 0]; % Nm/(rad/s)
sea_extra_sliding_friction = 0.001*ones(1,4); % Nm/(rad/s)
sea_offset_friction = [7.659 -6.198 6.447 -6.594]; % Nm
sea_coulomb_friction = [18.69 26.08 25.95 26.8+5]; % Nm
sea_coulomb_friction_direction_switch_sensitivity = [15 5 15 15];
k_ff = 1; % amount of feedforward to use
%-- Thresholds for activating SEA control
stance_flight_torque_threshold = 40*ones(1,4); % Nm, minimum measured torque to use large PD gains
sea_control_torque_cmd_small_threshold = 1*ones(1,4); %Nm, minimum commanded torque to activate sea control
