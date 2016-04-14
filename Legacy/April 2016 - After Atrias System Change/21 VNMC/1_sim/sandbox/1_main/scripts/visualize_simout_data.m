
clearvars;

maxFloorDiff = 0;
% maxFloorDiff = 0.03;


load('terrain\terrain_rough_10_rTrack','rTrack');
ground = rTrack;
% ground = randomGroundProfile(2,0.1);

paramIC = [1; 0; 80; 0.92; 100; 0.92];
eval('set_control_params');



eval('set_simulation_params');


%%%%%%%%%%%%%%% LOAD SIMOUT FILE %%%%%%%%%%%%

% load('experiments\sim_data_rough_ground_7cm','simout');


% load('experiments\3cm_fail','simout');
% 
% load('..\3_push_recovery\experiments\sim_push_-500N_60percent_fail.mat');
load('..\3_push_recovery\experiments\sim_push_500N_60percent_fail.mat');
% load('..\3_push_recovery\experiments\sim_push_-500N_30percent_success.mat');
% load('..\3_push_recovery\experiments\sim_push_500N_30percent_success.mat');

% load('..\4_trip_recovery\experiments\trip_-400N_60percent_success.mat');
% load('..\4_trip_recovery\experiments\trip_400N_60percent_success.mat');
% load('..\4_trip_recovery\experiments\trip_-400N_80percent_fail_flip.mat');
% load('..\4_trip_recovery\experiments\trip_400N_80percent_fail.mat');

% load('..\5_sensor_noise\experiments\noise_05deg_to_025deg.mat');

% load('experiments\seed3.mat');

% load('..\6_inertia_scaling\experiments\scale_torso_135percent.mat');
% load('..\6_inertia_scaling\experiments\scale_torso_150percent.mat');
% load('..\6_inertia_scaling\experiments\scale_legs_320percent.mat');
% load('..\6_inertia_scaling\experiments\scale_legs_350percent.mat');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

q = simout.q;

delta_yaw0 = -10*pi/180;
initial_boom_yaw = initial_boom_yaw + delta_yaw0;
q.signals.values(:,12) = q.signals.values(:,12) + delta_yaw0;
sim_t = simout.twalk;

yaw_period = 170*pi/180;
tau_height = 0.1;
height_speed = 1.25;
min_base_height = 0.5;
min_height = -min_base_height; %r_ground_1m = 2.0526
lead_yaw = -45*pi/180;
lag_yaw = 340*pi/180 + lead_yaw;
yaw_min = initial_boom_yaw;
yaw_max = initial_boom_yaw + 30/l_boom;
ts_anim = 0.0333;

sim('ATRIAS_nmm_anim_moving_floor');









