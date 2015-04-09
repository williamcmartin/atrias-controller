%% control parameters--specific to neuromuscular controller

% Manual Control

R_force_ctrl_switch = 0;
L_force_ctrl_switch = 0;
R_sea_input_switch = 0;
L_sea_input_switch = 0;
R_distribution_switch = 0;
L_distribution_switch = 0;
R_stim_switch = 0;
L_stim_switch = 0;

kp_phi12 = 0;
kd_phi12 = 0;
kp_phi23 = 0;
kd_phi23 = 0;
Lphi12_des = 170*pi/180;
Lphi23_des = 170*pi/180;
Rphi12_des = 150*pi/180;
Rphi23_des = 170*pi/180;

R_knee_trq_desired = 0;
R_hip_trq_desired = 0;
L_knee_trq_desired = 0;
L_hip_trq_desired = 0;

RStim_Constant = [0.25; %HFL
                  0.25; %GLU
                  0.2;  %HAM
                  0.6;  %RF
                  0.1;  %VAS
                  0.03];%BFSH
              
LStim_Constant = [0.25; %HFL
                  0.25; %GLU
                  0.2;  %HAM
                  0.6;  %RF
                  0.1;  %VAS
                  0.03];%BFSH
R_stim_gain = 0;
L_stim_gain = 0;
%% Foot Contact
fcut_contact = 600;
contactThr = 0.35;
releaseThr = 0.15;              

%% Torque Distribution
saturationTorque = 350; %[Nm] max torque for each motor
lambdaKnee = 1;
lambdaHip = 1;
max_torque_sagittal = min(MTR_MAX_CURRENT, LEG_CURRENT_LIMIT)*LEG_MOTOR_CONSTANT*LEG_MTR_GEAR_RATIO;  

%% Lateral hip PID control params
max_torque_lateral = min(MTR_HIP_MAX_CURRENT, HIP_CURRENT_LIMIT)*HIP_MOTOR_CONSTANT*HIP_MTR_GEAR_RATIO;
kp_lateral = 1000;
kd_lateral = 2*sqrt(kp_lateral*0.8); % 40
lateral_target_angle_left = -6*pi/180; % -35 degrees approx. cancels sagittal loads
lateral_target_angle_right = 6*pi/180; % +38 degrees approx. cancels sagittal loads
lateral_transition_force = 150;

% Lateral limits
minimum_lateral_angle = -9.5*pi/180;
maximum_lateral_angle = 18*pi/180;

%% Leg Limits
min_front_bar_angle = 85*pi/180; % ~83 degrees
max_front_bar_angle = 216*pi/180; % ~218 degrees
min_back_bar_angle = 146*pi/180; % ~144 degrees
max_back_bar_angle = 277*pi/180; % ~279 degrees
max_leg_angle = 230*pi/180;
min_leg_angle = 130*pi/180;
max_leg_length = 0.97;
min_leg_length = 0.4;

%% Musculoskeletal Parameters
virtual_musculoskeletal_params

%% Neural Control Parameters
% neural_control_params;   %needs param