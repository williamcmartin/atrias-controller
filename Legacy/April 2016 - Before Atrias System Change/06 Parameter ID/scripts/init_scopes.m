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