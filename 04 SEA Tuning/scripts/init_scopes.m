%% Create initial scopes
create_core_scopes;

%% Setup additional target scopes
number_of_tscopes = 4;
scope_update_freq = 250; % Hz
decimation = update_freq / scope_update_freq;
num_samples = 250;
tscopes = [];
for i=1:number_of_tscopes
    tscopes = [tscopes tg.addscope('target')];
end
set(tscopes, ...
    {'NumSamples', 'Decimation', 'TriggerMode', 'DisplayMode', 'YLimit'}, ...
    {num_samples,  decimation,   'FreeRun',     'Redraw',      'auto'});

%% Add signals for target scopes

tscopes(1).addsignal(getsignalid(tg,'Control/tau_measured/s1'));
tscopes(2).addsignal(getsignalid(tg,'Control/tau_measured/s2'));
tscopes(1).addsignal(getsignalid(tg,'Control/tau_desired_signals/s1'));
tscopes(2).addsignal(getsignalid(tg,'Control/tau_desired_signals/s2'));
tscopes(3).addsignal(getsignalid(tg,'Control/Behavior Control/back_right_triangle/s1'));
tscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/front_right_triangle/s1'));

%tscopes(3).addsignal(getsignalid(tg,'Control/tau_measured/s3'));
%tscopes(4).addsignal(getsignalid(tg,'Control/tau_measured/s4'));
%tscopes(3).addsignal(getsignalid(tg,'Control/tau_desired_signals/s4'));
%tscopes(4).addsignal(getsignalid(tg,'Control/tau_desired_signals/s5'));

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
fscopes(1).addsignal(getsignalid(tg,'Control/tau_measured/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/tau_measured/s2'));
fscopes(1).addsignal(getsignalid(tg,'Control/tau_measured/s3'));
fscopes(1).addsignal(getsignalid(tg,'Control/tau_measured/s4'));
fscopes(1).addsignal(getsignalid(tg,'Control/tau_desired_signals/s1'));
fscopes(1).addsignal(getsignalid(tg,'Control/tau_desired_signals/s2'));
fscopes(1).addsignal(getsignalid(tg,'Control/tau_desired_signals/s4'));
fscopes(1).addsignal(getsignalid(tg,'Control/tau_desired_signals/s5'));
fscopes.start();