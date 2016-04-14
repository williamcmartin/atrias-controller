% SEA control params
max_sagittal_loaded_torque = min(MTR_MAX_CURRENT, LEG_CURRENT_LIMIT)*LEG_MOTOR_CONSTANT*LEG_MTR_GEAR_RATIO;
max_sagittal_unloaded_torque = 3*178.5; % Nm
%-- Low Pass filter for acceleration
fcut_acceleration = 60*(2*pi); % Hz, Low pass filter cutoff frequency when calculating acceleration from velocity
lpf_damping = sqrt(2)/2; % butterworth damping ratio
B1_lpf_accel = -2*exp(-lpf_damping*fcut_acceleration*sample_time)*cos(fcut_acceleration*sample_time*sqrt(1-lpf_damping^2));
B2_lpf_accel = exp(-2*lpf_damping*fcut_acceleration*sample_time);
A_lpf_accel = 1 + B1_lpf_accel + B2_lpf_accel;
%-- Low Pass filter for torque derivative
fcut_dtau = 80*(2*pi); % Hz, Low pass filter cutoff frequency when calculating acceleration from velocity
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
%-- PD gains
kp_sea_torque = 0.60*[0.3, 0.3, 6.0, 6.0];
gain_nodes_sea_torque = [0,65,350,700];
kd_sea_percent_of_critical_damping = 0.70;

%-- Feedforward
sea_sliding_friction = [0 0 0 0]; % Nm/(rad/s)
sea_offset_friction = [0 0 0 0]; % Nm
sea_coulomb_friction = [30 20 20 20]; % Nm
sea_coulomb_friction_direction_switch_sensitivity = 20*[1 1 1 1];

%-- Thresholds for activating SEA control
loaded_unloaded_torque_threshold = 65*ones(1,4); % Nm, minimum measured torque to use large PD gains
sea_control_torque_cmd_small_threshold = 1*ones(1,4); %Nm, minimum commanded torque to activate sea control
%-- Friction Compensation Model for sagittal motors
karnopp_model_velocity_deadzone = [0.15 0.15 0.15 0.15]'; % rad/s
karnopp_model_coulomb_friction = [35 20 20 20]';
karnopp_model_static_friction = [50 40 35 35]';
karnopp_model_integration_constant = 1/sample_time;
karnopp_model_recursive_filter_sample_number = 0.050 / sample_time;

