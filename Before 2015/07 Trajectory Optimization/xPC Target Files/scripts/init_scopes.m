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
set(tscopes(1:number_of_tscopes), ...
    {'NumSamples', 'Decimation', 'TriggerMode', 'DisplayMode'}, ...
    {num_samples,  decimation,  'FreeRun',     'Numerical'});

%% Add signals for target scopes
tscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Trajectory Tests/Error1')); % back
tscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Trajectory Tests/Error2')); % front
tscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Trajectory Tests/TotalError'));

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
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/right_left/s1')); % Right or Left as primary
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Trajectory Tests/Switch/s1')); % desired leg length position
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Trajectory Tests/Switch/s2')); % desired leg length velocity
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Trajectory Tests/Switch/s4')); % desired leg angle position
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Trajectory Tests/Switch/s5')); % desired leg angle velocity
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Trajectory Tests/Leg Trajectory Generator/AlphaRef/s1')); % desired alpha target
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/virtual_spring_alpha/s1')); % measured alpha
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/run_trajectory/s1')); % start/stop trajectory runs
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Trajectory Tests/frontMotorDesired/s1'));%9
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Trajectory Tests/frontMotorDesired/s2'));%10
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Trajectory Tests/backMotorDesired/s1'));%11
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Primary Leg Behavior/Trajectory Tests/backMotorDesired/s2'));%12
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Secondary Leg Behavior/back_desired/s1'));%13
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Secondary Leg Behavior/dback_desired/s1'));%14
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Secondary Leg Behavior/front_desired/s1'));%15
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Secondary Leg Behavior/dfront_desired/s1'));%16



fscopes().start();
