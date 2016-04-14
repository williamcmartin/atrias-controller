%% Create initial scopes
create_core_scopes;

% %% Setup additional target scopes
% number_of_tscopes = 1;
% scope_update_freq = 250; % Hz
% decimation = update_freq / scope_update_freq;
% num_samples = 250;
% tscopes = [];
% for i=1:number_of_tscopes
%     tscopes = [tscopes tg.addscope('target')];
% end
% 
% set(tscopes(1), ...
%     {'NumSamples', 'Decimation', 'TriggerMode', 'DisplayMode'}, ...
%     {num_samples,  decimation,  'FreeRun',     'Numerical'});
% 
% %% Add signals for target scopes
% 
% tscopes(1).addsignal(getsignalid(tg,'DAQ/EtherCAT Init/s1'));
% tscopes(1).addsignal(getsignalid(tg,'DAQ/EtherCAT Init/s2'));
% tscopes(1).addsignal(getsignalid(tg,'DAQ/EtherCAT Init/s3'));
% tscopes(1).addsignal(getsignalid(tg,'DAQ/EtherCAT Init/s4'));
% tscopes(1).addsignal(getsignalid(tg,'DAQ/EtherCAT Init/s5'));
% tscopes(1).addsignal(getsignalid(tg,'DAQ/EtherCAT Init/s6'));
% 
% tscopes.start();

%% Setup additional file scopes
decimation = update_freq / 250;
num_samples = 1000;
number_of_fscopes = 2;
fscopes = [];
for i=1:number_of_fscopes
    fscopes = [fscopes tg.addscope('file')];
end
set(fscopes(1:number_of_fscopes), ...
    {'NumSamples', 'Decimation', 'WriteMode', 'AutoRestart', 'DynamicFileName'}, ...
    {num_samples,  decimation,  'Lazy',      'on',          'on'});


%% Add signals to file scopes
% Controller Data
set(fscopes(1),'FileName','E:\CONT_<%%%>.dat');
% ATRIAS State Machine (1 to 7)
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/system_state/s1')); % TouchDown
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/system_state/s2')); % LockedContact
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/system_state/s3')); % Unloading
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/system_state/s4')); % Takeoff
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/system_state/s5')); % Flight
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/right_left/s1')); % Right/Left Primary
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/contact_factor/s1')); % Estimated vertical force
% COM position and velocity (8 to 21)
% Using robot geometry:
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/State Estimation/com_state_from_robot/s1')); % forward COM position
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/State Estimation/com_state_from_robot/s2')); % forward COM velocity
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/State Estimation/com_state_from_robot/s3')); % lateral COM position
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/State Estimation/com_state_from_robot/s4')); % lateral COM velocity
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/State Estimation/com_state_from_robot/s5')); % vertical COM position
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/State Estimation/com_state_from_robot/s6')); % vertical COM velocity
% Using Kalman filter:
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/State Estimation/kalman_outputs/s1')); % forward COM velocity
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/State Estimation/kalman_outputs/s2')); % lateral COM velocity
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/State Estimation/kalman_outputs/s3')); % vertical COM position
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/State Estimation/kalman_outputs/s4')); % vertical COM velocity
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/State Estimation/kalman_uncertainty/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/State Estimation/kalman_uncertainty/s2'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/State Estimation/kalman_uncertainty/s3'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/State Estimation/kalman_uncertainty/s4'));
% Active controller (22,23)
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/hopping/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/deadbeat/s1'));
% Inverse dynamics (24 to 34)
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Stance/desired_forward_GRF/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Stance/desired_lateral_GRF/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Stance/desired_vertical_GRF/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Stance/desired_roll_acceleration/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/right_leg_grfs/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/right_leg_grfs/s2'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/right_leg_grfs/s3'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/left_leg_grfs/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/left_leg_grfs/s2'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/left_leg_grfs/s3'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/torso_roll_acceleration/s1'));
% Flight (35 to 40)
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/fourbar_desired_position/s1')); % back desired position
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/fourbar_desired_position/s2')); % front desired position
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/fourbar_desired_velocity/s1')); % back desired velocity
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/fourbar_desired_velocity/s2')); % front desired velocity
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/fourbar_desired_acceleration/s1')); % back desired acceleration
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/fourbar_desired_acceleration/s2')); % front desired acceleration
% Gear position kalman filter (41 to 56)
fscopes(1).addsignal(getsignalid(tg,'Fourbar Gearside Kalman Filter/kalman_filtered_position/s1'));
fscopes(1).addsignal(getsignalid(tg,'Fourbar Gearside Kalman Filter/kalman_filtered_position/s2'));
fscopes(1).addsignal(getsignalid(tg,'Fourbar Gearside Kalman Filter/kalman_filtered_position/s3'));
fscopes(1).addsignal(getsignalid(tg,'Fourbar Gearside Kalman Filter/kalman_filtered_position/s4'));
fscopes(1).addsignal(getsignalid(tg,'Fourbar Gearside Kalman Filter/kalman_filtered_velocity/s1'));
fscopes(1).addsignal(getsignalid(tg,'Fourbar Gearside Kalman Filter/kalman_filtered_velocity/s2'));
fscopes(1).addsignal(getsignalid(tg,'Fourbar Gearside Kalman Filter/kalman_filtered_velocity/s3'));
fscopes(1).addsignal(getsignalid(tg,'Fourbar Gearside Kalman Filter/kalman_filtered_velocity/s4'));
fscopes(1).addsignal(getsignalid(tg,'Fourbar Gearside Kalman Filter/kalman_uncertainty/s1'));
fscopes(1).addsignal(getsignalid(tg,'Fourbar Gearside Kalman Filter/kalman_uncertainty/s2'));
fscopes(1).addsignal(getsignalid(tg,'Fourbar Gearside Kalman Filter/kalman_uncertainty/s3'));
fscopes(1).addsignal(getsignalid(tg,'Fourbar Gearside Kalman Filter/kalman_uncertainty/s4'));
fscopes(1).addsignal(getsignalid(tg,'Fourbar Gearside Kalman Filter/kalman_uncertainty/s5'));
fscopes(1).addsignal(getsignalid(tg,'Fourbar Gearside Kalman Filter/kalman_uncertainty/s6'));
fscopes(1).addsignal(getsignalid(tg,'Fourbar Gearside Kalman Filter/kalman_uncertainty/s7'));
fscopes(1).addsignal(getsignalid(tg,'Fourbar Gearside Kalman Filter/kalman_uncertainty/s8'));
% Deadbeat Stance (57 to 64)
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Stance/time_since_stance/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Stance/z_reference/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Stance/z_reference/s2'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Stance/z_reference/s3'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Stance/x_reference/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Stance/x_reference/s2'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Stance/y_reference/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Stance/y_reference/s2'));
% Deadbeat Flight - XY placement (65 to 75)
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/x_touchdown/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/y_touchdown/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/current_desired_foot_position/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/current_desired_foot_position/s2'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/current_desired_foot_position/s3'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/current_desired_foot_position/s4'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/current_desired_foot_position/s5'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/current_desired_foot_position/s6'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/current_desired_foot_position/s7'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/current_desired_foot_position/s8'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/current_desired_foot_position/s9'));



set(fscopes(2),'FileName','E:\CONT2_<%%%>.dat');
% Deadbeat Flight - Frontal LQR (1 to 9)
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/desired_primary_leg_roll/s1'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/frontal_feedforward/s1'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/frontal_feedforward/s2'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/frontal_adjusted_ref/s1'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/frontal_adjusted_ref/s2'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/frontal_adjusted_ref/s3'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/frontal_adjusted_ref/s4'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/frontal_adjusted_ref/s5'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/frontal_adjusted_ref/s6'));
% Closed loop feedback (10 to 23)
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Closed Loop Compensation/x_foot_correction/s1'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Closed Loop Compensation/y_foot_correction/s1'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Closed Loop Compensation/A_x/s1'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Closed Loop Compensation/epsilon_x/s1'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Closed Loop Compensation/c_x/s1'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Closed Loop Compensation/A_x_no_bias/s1'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Closed Loop Compensation/epsilon_x_no_bias/s1'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Closed Loop Compensation/c_x_no_bias/s1'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Closed Loop Compensation/A_y/s1'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Closed Loop Compensation/epsilon_y/s1'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Closed Loop Compensation/c_y/s1'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Closed Loop Compensation/A_y_no_bias/s1'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Closed Loop Compensation/epsilon_y_no_bias/s1'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Closed Loop Compensation/c_y_no_bias/s1'));


fscopes.start();

%%
msgbox('Scopes Initialized!');