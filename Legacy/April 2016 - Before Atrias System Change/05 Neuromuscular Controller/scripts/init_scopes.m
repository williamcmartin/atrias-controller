%% Create initial scopes
create_core_scopes;

% %% Setup additional target scopes
% number_of_tscopes = 2;
% scope_update_freq = 250; % Hz
% decimation = update_freq / scope_update_freq;
% num_samples = 250;
% tscopes = [];
% for i=1:number_of_tscopes
%     tscopes = [tscopes tg.addscope('target')];
% end
% set(tscopes(1), ...
%     {'NumSamples', 'Decimation', 'TriggerMode', 'DisplayMode', 'YLimit'}, ...
%     {num_samples,  decimation,   'FreeRun',     'Redraw',      [0, 550]});
% set(tscopes(2), ...
%     {'NumSamples', 'Decimation', 'TriggerMode', 'DisplayMode'}, ...
%     {num_samples,  decimation,  'FreeRun',     'Numerical'});
% 
% %% Add signals for target scopes
% 
% tscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/Velocity Estimation/takeoff_energy/s1'));
% 
% tscopes(2).addsignal(getsignalid(tg,'DAQ/EtherCAT Init/s1'));
% tscopes(2).addsignal(getsignalid(tg,'DAQ/EtherCAT Init/s2'));
% tscopes(2).addsignal(getsignalid(tg,'DAQ/EtherCAT Init/s3'));
% tscopes(2).addsignal(getsignalid(tg,'DAQ/EtherCAT Init/s4'));
% tscopes(2).addsignal(getsignalid(tg,'DAQ/EtherCAT Init/s5'));
% tscopes(2).addsignal(getsignalid(tg,'DAQ/EtherCAT Init/s6'));
% 
% tscopes.start();

%% Setup additional file scopes
decimation = update_freq / 250;
num_samples = 1000;
number_of_fscopes = 4;
fscopes = [];
for i=1:number_of_fscopes
    fscopes = [fscopes tg.addscope('file')];
end
set(fscopes(1:number_of_fscopes), ...
    {'NumSamples', 'Decimation', 'WriteMode', 'AutoRestart', 'DynamicFileName'}, ...
    {num_samples,  decimation,  'Lazy',      'on',          'on'});


%% Add signals to file scopes
% Manual Switches
set(fscopes(1),'FileName','E:\SWITCHES_<%%%>.dat');
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/manual_switches/s1')); 
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/manual_switches/s2')); 
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/manual_switches/s3')); 
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/manual_switches/s4')); 
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/manual_switches/s5')); 
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/manual_switches/s6')); 
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/manual_switches/s7')); 
fscopes(1).addsignal(getsignalid(tg,'Control/Behavior Control/manual_switches/s8')); 

% Robot Kinematics (REDUNDANT with POS_001 from create_core_scopes)
% set(fscopes(5),'FileName','E:\ROBO_KIN_<%%%>.dat'); %CHECK fscopes number here...
% fscopes(5).addsignal(getsignalid(tg,'Control/Behavior Control/q/s1')); 
% fscopes(5).addsignal(getsignalid(tg,'Control/Behavior Control/q/s2')); 
% fscopes(5).addsignal(getsignalid(tg,'Control/Behavior Control/q/s3')); 
% fscopes(5).addsignal(getsignalid(tg,'Control/Behavior Control/q/s4')); 
% fscopes(5).addsignal(getsignalid(tg,'Control/Behavior Control/q/s5')); 
% fscopes(5).addsignal(getsignalid(tg,'Control/Behavior Control/q/s6')); 
% fscopes(5).addsignal(getsignalid(tg,'Control/Behavior Control/q/s7')); 
% fscopes(5).addsignal(getsignalid(tg,'Control/Behavior Control/q/s8')); 
% fscopes(5).addsignal(getsignalid(tg,'Control/Behavior Control/q/s9')); 
% fscopes(5).addsignal(getsignalid(tg,'Control/Behavior Control/q/s10')); 
% fscopes(5).addsignal(getsignalid(tg,'Control/Behavior Control/q/s11')); 
% fscopes(5).addsignal(getsignalid(tg,'Control/Behavior Control/q/s12')); 
% fscopes(5).addsignal(getsignalid(tg,'Control/Behavior Control/q/s13')); 
% fscopes(5).addsignal(getsignalid(tg,'Control/Behavior Control/dq/s1')); 
% fscopes(5).addsignal(getsignalid(tg,'Control/Behavior Control/dq/s2')); 
% fscopes(5).addsignal(getsignalid(tg,'Control/Behavior Control/dq/s3')); 
% fscopes(5).addsignal(getsignalid(tg,'Control/Behavior Control/dq/s4')); 
% fscopes(5).addsignal(getsignalid(tg,'Control/Behavior Control/dq/s5')); 
% fscopes(5).addsignal(getsignalid(tg,'Control/Behavior Control/dq/s6')); 
% fscopes(5).addsignal(getsignalid(tg,'Control/Behavior Control/dq/s7')); 
% fscopes(5).addsignal(getsignalid(tg,'Control/Behavior Control/dq/s8')); 
% fscopes(5).addsignal(getsignalid(tg,'Control/Behavior Control/dq/s9')); 
% fscopes(5).addsignal(getsignalid(tg,'Control/Behavior Control/dq/s10')); 
% fscopes(5).addsignal(getsignalid(tg,'Control/Behavior Control/dq/s11')); 
% fscopes(5).addsignal(getsignalid(tg,'Control/Behavior Control/dq/s12')); 
% fscopes(5).addsignal(getsignalid(tg,'Control/Behavior Control/dq/s13')); 

% Virtual Kinematics (e.g. leg length/angle, virtual knee/hip angles)
set(fscopes(2),'FileName','E:\VIRT_KIN_<%%%>.dat');
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/virtual_kinematics/s1')); 
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/virtual_kinematics/s2'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/virtual_kinematics/s3'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/virtual_kinematics/s4'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/virtual_kinematics/s5'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/virtual_kinematics/s6'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/virtual_kinematics/s7'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/virtual_kinematics/s8'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/virtual_kinematics/s9'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/virtual_kinematics/s10'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/virtual_kinematics/s11'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/virtual_kinematics/s12'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/virtual_kinematics/s13'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/virtual_kinematics/s14'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/virtual_kinematics/s15'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/virtual_kinematics/s16'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/virtual_kinematics/s17'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/virtual_kinematics/s18'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/virtual_kinematics/s19'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/R_Contact/s1'));
fscopes(2).addsignal(getsignalid(tg,'Control/Behavior Control/L_Contact/s1'));

% Torques (more detail)
set(fscopes(3),'FileName','E:\MODEL_TORQ_<%%%>.dat');
fscopes(3).addsignal(getsignalid(tg,'Control/Behavior Control/torques/s1')); % SEA desired
fscopes(3).addsignal(getsignalid(tg,'Control/Behavior Control/torques/s2'));
fscopes(3).addsignal(getsignalid(tg,'Control/Behavior Control/torques/s3'));
fscopes(3).addsignal(getsignalid(tg,'Control/Behavior Control/torques/s4'));
fscopes(3).addsignal(getsignalid(tg,'Control/Behavior Control/torques/s5')); % SEA Measured
fscopes(3).addsignal(getsignalid(tg,'Control/Behavior Control/torques/s6'));
fscopes(3).addsignal(getsignalid(tg,'Control/Behavior Control/torques/s7'));
fscopes(3).addsignal(getsignalid(tg,'Control/Behavior Control/torques/s8'));    
fscopes(3).addsignal(getsignalid(tg,'Control/Behavior Control/torques/s9')); % Commanded motor-side torque
fscopes(3).addsignal(getsignalid(tg,'Control/Behavior Control/torques/s10'));
fscopes(3).addsignal(getsignalid(tg,'Control/Behavior Control/torques/s11'));
fscopes(3).addsignal(getsignalid(tg,'Control/Behavior Control/torques/s12'));
fscopes(3).addsignal(getsignalid(tg,'Control/Behavior Control/torques/s13')); % Hip/Knee Desired
fscopes(3).addsignal(getsignalid(tg,'Control/Behavior Control/torques/s14'));
fscopes(3).addsignal(getsignalid(tg,'Control/Behavior Control/torques/s15'));
fscopes(3).addsignal(getsignalid(tg,'Control/Behavior Control/torques/s16'));   
fscopes(3).addsignal(getsignalid(tg,'Control/Behavior Control/torques/s17')); % Hip/Knee Measured
fscopes(3).addsignal(getsignalid(tg,'Control/Behavior Control/torques/s18'));
fscopes(3).addsignal(getsignalid(tg,'Control/Behavior Control/torques/s19'));
fscopes(3).addsignal(getsignalid(tg,'Control/Behavior Control/torques/s20'));   
fscopes(3).addsignal(getsignalid(tg,'Control/Behavior Control/torques/s21')); % Hip/Knee Limit Torques
fscopes(3).addsignal(getsignalid(tg,'Control/Behavior Control/torques/s22'));
fscopes(3).addsignal(getsignalid(tg,'Control/Behavior Control/torques/s23'));
fscopes(3).addsignal(getsignalid(tg,'Control/Behavior Control/torques/s24'));   
fscopes(3).addsignal(getsignalid(tg,'Control/Behavior Control/torques/s25')); % Leg Loads
fscopes(3).addsignal(getsignalid(tg,'Control/Behavior Control/torques/s26'));   

% Muscle States (Lmtu, Fm, Lce, Vce, Stim, Act, moment arm(s))
set(fscopes(4),'FileName','E:\MUSCLE_<%%%>.dat');
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s1')); 
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s2'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s3'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s4'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s5')); 
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s6'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s7'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s8'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s9')); 
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s10'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s11'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s12'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s13')); 
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s14'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s15'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s16'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s17')); 
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s18'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s19'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s20'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s21')); 
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s22'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s23'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s24'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s25')); 
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s26'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s27'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s28'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s29')); 
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s30'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s31'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s32'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s33')); 
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s34'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s35'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s36'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s37')); 
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s38'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s39'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s40'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s41')); 
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s42'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s43'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/R_muscle_states/s44'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s1')); 
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s2'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s3'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s4'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s5')); 
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s6'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s7'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s8'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s9')); 
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s10'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s11'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s12'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s13')); 
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s14'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s15'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s16'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s17')); 
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s18'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s19'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s20'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s21')); 
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s22'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s23'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s24'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s25')); 
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s26'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s27'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s28'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s29')); 
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s30'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s31'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s32'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s33')); 
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s34'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s35'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s36'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s37')); 
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s38'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s39'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s40'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s41')); 
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s42'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s43'));
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/L_muscle_states/s44'));

fscopes.start();