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
    {num_samples,  decimation,   'FreeRun',     'Redraw',      'auto'});
set(tscopes(2), ...
    {'NumSamples', 'Decimation', 'TriggerMode', 'DisplayMode'}, ...
    {num_samples,  decimation,  'FreeRun',     'Numerical'});

%% Add signals for target scopes

tscopes(1).addsignal(getsignalid(tg,['atrias_system/EtherCAT Init/s4']));

tscopes(2).addsignal(getsignalid(tg,'atrias_system/EtherCAT Init/s1'));
tscopes(2).addsignal(getsignalid(tg,'atrias_system/EtherCAT Init/s2'));
tscopes(2).addsignal(getsignalid(tg,'atrias_system/EtherCAT Init/s3'));
tscopes(2).addsignal(getsignalid(tg,'atrias_system/EtherCAT Init/s4'));
tscopes(2).addsignal(getsignalid(tg,'atrias_system/EtherCAT Init/s5'));
tscopes(2).addsignal(getsignalid(tg,'atrias_system/EtherCAT Init/s6'));

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
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Right Leg Sagittal Sine Wave/R Hip Theta Desired/s1')); % opposite of stance phase
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Right Leg Sagittal Sine Wave/R Knee Theta Desired/s1')); % opposite of stance phase





fscopes.start();