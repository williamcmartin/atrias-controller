%% Create initial scopes
create_core_scopes;

%% Setup additional target scopes
number_of_tscopes = 2;
scope_update_freq = 250; % Hz
decimation = update_freq / scope_update_freq;
num_samples = 250;
tscopes = [];
for i=1:number_of_tscopes
    tscopes = [tscopes tg.addscope('target')];
end
set(tscopes(1), ...
    {'NumSamples', 'Decimation', 'TriggerMode', 'DisplayMode', 'YLimit'}, ...
    {num_samples,  decimation,   'FreeRun',     'Redraw',      [0, 550]});
set(tscopes(2), ...
    {'NumSamples', 'Decimation', 'TriggerMode', 'DisplayMode'}, ...
    {num_samples,  decimation,  'FreeRun',     'Numerical'});

%% Add signals for target scopes

tscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Velocity Estimation/takeoff_energy/s1'));

tscopes(2).addsignal(getsignalid(tg,'DAQ/EtherCAT Init/s1'));
tscopes(2).addsignal(getsignalid(tg,'DAQ/EtherCAT Init/s2'));
tscopes(2).addsignal(getsignalid(tg,'DAQ/EtherCAT Init/s3'));
tscopes(2).addsignal(getsignalid(tg,'DAQ/EtherCAT Init/s4'));
tscopes(2).addsignal(getsignalid(tg,'DAQ/EtherCAT Init/s5'));
tscopes(2).addsignal(getsignalid(tg,'DAQ/EtherCAT Init/s6'));

tscopes.start();

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
% ATRIAS State
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/flight')); % Flight
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/right_left/s1')); % Right or left primary leg
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/F_vertical/s1')); % Vertical Force
% translational velocity
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/dx_avg/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/dy_avg/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Velocity Estimation/dy_TO/s1'));
% energy
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Velocity Estimation/takeoff_energy/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Velocity Estimation/y_hip/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Velocity Estimation/y_com/s1'));
% desired angles
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/SMM + Raibert Placement/Leg Placement Torque/phi_desired/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/SMM + SMM Placement/Primary Swing Phase/Leg Trajectory Generator (Normal)/AlphaRef/s1'));
% SMM params
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/SMM + SMM Placement/Primary Stance Phase/k_virtual/s1'));
% controller states
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/thrust'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/posture'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/placement'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/hopping/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/SMM_on/s1'));
% estimations
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Velocity Estimation/y_TO_est/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Velocity Estimation/dx_TO_est/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Velocity Estimation/dy_TO_est/s1'));
% virtual spring
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/virtual_spring_alpha/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/virtual_spring_alpha/s2'));
% Inverse dynamics
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/SMM + SMM Placement/Primary Stance Phase/Virtual Leg Force and Swing Leg Retraction/GRFx_target/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/SMM + SMM Placement/Primary Stance Phase/Virtual Leg Force and Swing Leg Retraction/GRFy_target/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/SMM + SMM Placement/Primary Stance Phase/Virtual Leg Force and Swing Leg Retraction/GRF_angle/s1'));
% Virtual leg trajectory
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/SMM + SMM Placement/Primary Swing Phase/LegLengthTarget/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/SMM + SMM Placement/Primary Swing Phase/LegLengthTarget/s2'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/SMM + SMM Placement/Primary Swing Phase/LegLengthTarget/s3'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/SMM + SMM Placement/Primary Swing Phase/LegAngleTarget/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/SMM + SMM Placement/Primary Swing Phase/LegAngleTarget/s2'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/SMM + SMM Placement/Primary Swing Phase/LegAngleTarget/s3'));
% Inverse dynamics - raibert
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/SMM + Raibert Placement/Inverse Dynamics Virtual Spring/GRFx_target/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/SMM + Raibert Placement/Inverse Dynamics Virtual Spring/GRFy_target/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/SMM + Raibert Placement/Inverse Dynamics Virtual Spring/GRF_angle/s1'));
% Raibert leg trajectory
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/SMM + Raibert Placement/leg_length_commands/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/SMM + Raibert Placement/leg_length_commands/s2'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/SMM + Raibert Placement/leg_length_commands/s3'));
% Raibert stance
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/SMM + Raibert Placement/l_virtual_deflection/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/SMM + Raibert Placement/k_virtual/s1'));
% x position
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Velocity Estimation/x_com/s1'));
% direction of desired velocity
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/SMM + Raibert Placement/Leg Placement Torque/direction/s1'));



fscopes.start();

%%
msgbox('Scopes Initialized!');