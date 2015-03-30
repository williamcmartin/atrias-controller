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
% contact
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/L_Contact/s1')); 
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/R_Contact/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/flight/s1')); 
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/RLoad/s1')); 
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/LLoad/s1')); 
% translational velocity
% fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/dx_avg/s1'));
% fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/dy_avg/s1'));
% fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Velocity Estimation/dy_TO/s1'));
% % energy
% fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Velocity Estimation/takeoff_energy/s1'));
% fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Velocity Estimation/y_hip/s1'));
% fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Velocity Estimation/y_com/s1'));
% muscle stimulations
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/R_stim/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/R_stim/s2'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/R_stim/s3'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/R_stim/s4'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/R_stim/s5'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/R_stim/s6'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/L_stim/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/L_stim/s2'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/L_stim/s3'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/L_stim/s4'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/L_stim/s5'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/L_stim/s6'));
% Torques
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/R_sea_B_des/s1')); % SEA desired
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/R_sea_F_des/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/L_sea_B_des/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/L_sea_F_des/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/R_sea_B_meas/s1')); % SEA Measured
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/R_sea_F_meas/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/L_sea_B_meas/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/L_sea_F_meas/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/R_tau_virt_des/s1')); % Hip/Knee Desired
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/R_tau_virt_des/s2'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/L_tau_virt_des/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/L_tau_virt_des/s2'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/R_tau_virt_meas/s1')); % Hip/Knee Measured
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/R_tau_virt_meas/s2'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/L_tau_virt_meas/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/L_tau_virt_meas/s2'));
fscopes(1).addsignal(getsignalid(tg,'tau_cmd/s1'));
fscopes(1).addsignal(getsignalid(tg,'tau_cmd/s2'));
fscopes(1).addsignal(getsignalid(tg,'tau_cmd/s3'));
fscopes(1).addsignal(getsignalid(tg,'tau_cmd/s4'));
fscopes(1).addsignal(getsignalid(tg,'tau_cmd/s5'));
fscopes(1).addsignal(getsignalid(tg,'tau_cmd/s6'));

fscopes.start();