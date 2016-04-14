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
number_of_fscopes = 1;
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
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/vertical_grf/s1')); % Estimated vertical force
% COM position and velocity using Boom (9 to 12)
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/State Estimation/com_state_from_boom/s1')); % X COM
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/State Estimation/com_state_from_boom/s2')); % dX COM
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/State Estimation/com_state_from_boom/s3')); % Y COM
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/State Estimation/com_state_from_boom/s4')); % dY COM
% Active controller (13 to 14)
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/hopping/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/deadbeat/s1'));
% Stance (15 to 19)
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Stance/Virtual Spring Stiffness/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Stance/Virtual Spring Stance Rest Length/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Stance/Inverse Dynamics Virtual Spring/GRFx_target/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Stance/Inverse Dynamics Virtual Spring/GRFy_target/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Stance/Inverse Dynamics Virtual Spring/GRF_angle/s1'));
% Flight (20 to 25)
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/fourbar_desired_position/s1')); % back desired position
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/fourbar_desired_position/s2')); % front desired position
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/fourbar_desired_velocity/s1')); % back desired velocity
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/fourbar_desired_velocity/s2')); % front desired velocity
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/fourbar_desired_acceleration/s1')); % back desired acceleration
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/fourbar_desired_acceleration/s2')); % front desired acceleration
% Raibert (26 to 32)
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/Raibert Style Leg Placement/phi_desired/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/Raibert Style Leg Placement/dphi_desired/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/Raibert Style Leg Placement/direction/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/Raibert Style Leg Placement/desired_forward_velocity/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/leg_length_commands/s1')); % desired leg length position
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/leg_length_commands/s2')); % desired leg length velocity
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Flight/leg_length_commands/s3')); % desired leg length acceleration
% COM position and velocity using robot geometry (33 to 36)
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/State Estimation/com_state_from_robot/s1')); % horizontal COM position
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/State Estimation/com_state_from_robot/s2')); % horizontal COM velocity
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/State Estimation/com_state_from_robot/s3')); % vertical COM position
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/State Estimation/com_state_from_robot/s4')); % vertical COM velocity
% Kalman filter outputs (37 to 39)
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/State Estimation/kalman_dx_z_dz/s1')); % horizontal COM velocity
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/State Estimation/kalman_dx_z_dz/s2')); % vertical COM position
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/State Estimation/kalman_dx_z_dz/s3')); % vertical COM velocity
% Virtual Spring Length
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/virtual_spring_length/s1')); % virtual spring length
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/virtual_spring_length/s2')); % virtual spring velocity
% Estimated GRFs
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/right_leg_grfs/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/right_leg_grfs/s2'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/left_leg_grfs/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/left_leg_grfs/s2'));
% Kalman filter uncertainty
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/State Estimation/kalman_uncertainty/s1')); % horizontal kalman uncertainty
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/State Estimation/kalman_uncertainty/s2')); % vertical kalman uncertainty 1
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/State Estimation/kalman_uncertainty/s3')); % vertical kalman uncertainty 2
% Desired system energy
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Running/Stance/Nonlinear Spring Stiffness/desired_system_energy/s1'));
% Gear position kalman filter
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

% Deadbeat
%fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/SMM + SMM Placement/Primary Swing Phase/Leg Trajectory Generator (Normal)/AlphaRef/s1'));
% fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/SMM + SMM Placement/Primary Swing Phase/LegLengthTarget/s1'));
% fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/SMM + SMM Placement/Primary Swing Phase/LegLengthTarget/s2'));
% fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/SMM + SMM Placement/Primary Swing Phase/LegLengthTarget/s3'));
% fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/SMM + SMM Placement/Primary Swing Phase/LegAngleTarget/s1'));
% fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/SMM + SMM Placement/Primary Swing Phase/LegAngleTarget/s2'));
% fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/SMM + SMM Placement/Primary Swing Phase/LegAngleTarget/s3'));

fscopes.start();

%%
msgbox('Scopes Initialized!');