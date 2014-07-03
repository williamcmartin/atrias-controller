%% Setup scopes on target machine
number_of_tscopes = 6;
scope_update_freq = 250; % Hz
decimiation = update_freq / scope_update_freq;
num_samples = 200;

scopes = tg.getscope();
if ~isempty(scopes) 
    scopes.stop;
    tg.remscope(1:size(scopes,1)); % remove all current scopes 
end

tg.addscope('target',1:number_of_tscopes);
scopes = tg.getscope();

set(scopes(1:number_of_tscopes), ...
    {'NumSamples', 'Decimation', 'TriggerMode', 'DisplayMode'}, ...
    {num_samples,  decimiation,  'FreeRun',     'Numerical'});
set(scopes(3:6), ...
    {'NumSamples', 'Decimation', 'TriggerMode', 'DisplayMode',   'YLimit'}, ...
    {num_samples,  decimiation,  'FreeRun',     'Redraw',        'Auto'});

%% Add signals for encoders
stop(scopes)

% right leg
scopes(1).addsignal(getsignalid(tg,'DAQ/q_signals_degrees/s3')); % right front leg
scopes(1).addsignal(getsignalid(tg,'DAQ/q_signals_degrees/s4')); % right front motor
scopes(1).addsignal(getsignalid(tg,'DAQ/q_signals_degrees/s1')); % right back leg
scopes(1).addsignal(getsignalid(tg,'DAQ/q_signals_degrees/s2')); % right back motor
% left leg
scopes(1).addsignal(getsignalid(tg,'DAQ/q_signals_degrees/s7')); % left front leg
scopes(1).addsignal(getsignalid(tg,'DAQ/q_signals_degrees/s8')); % left front motor
scopes(1).addsignal(getsignalid(tg,'DAQ/q_signals_degrees/s5')); % left back leg
scopes(1).addsignal(getsignalid(tg,'DAQ/q_signals_degrees/s6')); % left back motor
% lateral
scopes(2).addsignal(getsignalid(tg,'DAQ/raw_encoder_signals/s13'));
scopes(2).addsignal(getsignalid(tg,'DAQ/q_signals_degrees/s9')); % right lateral
scopes(2).addsignal(getsignalid(tg,'DAQ/q_signals_degrees/s10')); % left lateral
% boom
scopes(2).addsignal(getsignalid(tg,'DAQ/q_signals_degrees/s13')); % boom pitch
scopes(2).addsignal(getsignalid(tg,'DAQ/q_signals_degrees/s11')); % boom roll
scopes(2).addsignal(getsignalid(tg,'DAQ/q_signals_degrees/s12')); % boom yaw
% motor torques
scopes(3).addsignal(getsignalid(tg,'DAQ/tau_cmd_signals/s1')); % backR
scopes(3).addsignal(getsignalid(tg,'Control/Actuator Control/tau_desired_signals/s1')); 
scopes(4).addsignal(getsignalid(tg,'DAQ/tau_cmd_signals/s2')); % frontR
scopes(4).addsignal(getsignalid(tg,'Control/Actuator Control/tau_desired_signals/s2'));
scopes(5).addsignal(getsignalid(tg,'DAQ/tau_cmd_signals/s4')); % backL
scopes(5).addsignal(getsignalid(tg,'Control/Actuator Control/tau_desired_signals/s4')); 
scopes(6).addsignal(getsignalid(tg,'DAQ/tau_cmd_signals/s5')); % frontL
scopes(6).addsignal(getsignalid(tg,'Control/Actuator Control/tau_desired_signals/s5'));

%% Start scopes again
start(scopes);

%% Setup host scopes
number_of_hscopes = 1;
scope_update_freq = 250; % Hz
num_samples = 2000;
first_hscope = number_of_tscopes + 1;
tg.addscope('host',first_hscope:first_hscope+number_of_hscopes-1);
hscopes = tg.getscope(first_hscope:first_hscope+number_of_hscopes-1);

%% Add signals for limit switches
hscopes.stop();
% hscopes(1).addsignal(getsignalidsfromlabel(tg,'backSwR'));
% hscopes(1).addsignal(getsignalidsfromlabel(tg,'frontSwR'));
% hscopes(1).addsignal(getsignalidsfromlabel(tg,'backSwL'));
% hscopes(1).addsignal(getsignalidsfromlabel(tg,'frontSwL'));
hscopes.start();

%% Setup file scopes
number_of_fscopes = 4;
first_fscope = number_of_tscopes + number_of_hscopes + 1;
tg.addscope('file',first_fscope:first_fscope+number_of_fscopes-1);
fscopes = tg.getscope(first_fscope:first_fscope+number_of_fscopes-1);
set(fscopes(1:number_of_fscopes), ...
    {'NumSamples', 'Decimation', 'TriggerMode', 'AutoRestart', 'DynamicFileName'}, ...
    {num_samples,  decimiation,  'FreeRun',     'on',          'on'});
set(fscopes(3),'Decimation', update_freq / (update_freq/4));

%% Add signals to file scopes
fscopes.stop();
%%% Position data
set(fscopes(1),'FileName','E:\POS_<%%%>.dat');
fscopes(1).addsignal(getsignalid(tg,'DAQ/q_signals/s3')); % right front leg
fscopes(1).addsignal(getsignalid(tg,'DAQ/q_signals/s4')); % right front gear
fscopes(1).addsignal(getsignalid(tg,'DAQ/q_signals/s1')); % right back leg
fscopes(1).addsignal(getsignalid(tg,'DAQ/q_signals/s2')); % right back gear
fscopes(1).addsignal(getsignalid(tg,'DAQ/q_signals/s7')); % left front leg
fscopes(1).addsignal(getsignalid(tg,'DAQ/q_signals/s8')); % left front gear
fscopes(1).addsignal(getsignalid(tg,'DAQ/q_signals/s5')); % left back leg
fscopes(1).addsignal(getsignalid(tg,'DAQ/q_signals/s6')); % left back gear
fscopes(1).addsignal(getsignalid(tg,'DAQ/q_signals/s9')); % right lateral
fscopes(1).addsignal(getsignalid(tg,'DAQ/q_signals/s10')); % left lateral
fscopes(1).addsignal(getsignalid(tg,'DAQ/q_signals/s11')); % boom roll 
fscopes(1).addsignal(getsignalid(tg,'DAQ/q_signals/s12')); % boom yaw 
fscopes(1).addsignal(getsignalid(tg,'DAQ/q_signals/s13')); % boom pitch 
% Velocities
fscopes(1).addsignal(getsignalid(tg,'DAQ/dq_signals/s3')); % front right leg
fscopes(1).addsignal(getsignalid(tg,'DAQ/dq_signals/s4')); % front right motor
fscopes(1).addsignal(getsignalid(tg,'DAQ/dq_signals/s1')); % back right leg
fscopes(1).addsignal(getsignalid(tg,'DAQ/dq_signals/s2')); % back right motor
fscopes(1).addsignal(getsignalid(tg,'DAQ/dq_signals/s7')); % front left  leg
fscopes(1).addsignal(getsignalid(tg,'DAQ/dq_signals/s8')); % front left motor
fscopes(1).addsignal(getsignalid(tg,'DAQ/dq_signals/s5')); % back left leg
fscopes(1).addsignal(getsignalid(tg,'DAQ/dq_signals/s6')); % back left motor
fscopes(1).addsignal(getsignalid(tg,'DAQ/dq_signals/s9')); % right lateral
fscopes(1).addsignal(getsignalid(tg,'DAQ/dq_signals/s10')); % left lateral
fscopes(1).addsignal(getsignalid(tg,'DAQ/dq_signals/s11')); % boom roll 
fscopes(1).addsignal(getsignalid(tg,'DAQ/dq_signals/s12')); % boom yaw 
fscopes(1).addsignal(getsignalid(tg,'DAQ/dq_signals/s13')); % boom pitch 

%%% Torque data
set(fscopes(2),'FileName','E:\TORQ_<%%%>.dat');
% commanded torques
fscopes(2).addsignal(getsignalid(tg,'DAQ/tau_cmd_signals/s1')); 
fscopes(2).addsignal(getsignalid(tg,'DAQ/tau_cmd_signals/s2')); 
fscopes(2).addsignal(getsignalid(tg,'DAQ/tau_cmd_signals/s3')); 
fscopes(2).addsignal(getsignalid(tg,'DAQ/tau_cmd_signals/s4')); 
fscopes(2).addsignal(getsignalid(tg,'DAQ/tau_cmd_signals/s5')); 
fscopes(2).addsignal(getsignalid(tg,'DAQ/tau_cmd_signals/s6')); 
% desired torques
fscopes(2).addsignal(getsignalid(tg,'Control/Actuator Control/tau_desired_signals/s1')); % backR
fscopes(2).addsignal(getsignalid(tg,'Control/Actuator Control/tau_desired_signals/s2')); % frontR
fscopes(2).addsignal(getsignalid(tg,'Control/Actuator Control/tau_desired_signals/s3')); % latR
fscopes(2).addsignal(getsignalid(tg,'Control/Actuator Control/tau_desired_signals/s4')); % backL
fscopes(2).addsignal(getsignalid(tg,'Control/Actuator Control/tau_desired_signals/s5')); % frontL
fscopes(2).addsignal(getsignalid(tg,'Control/Actuator Control/tau_desired_signals/s6')); % latL

%%% Supervisory data
set(fscopes(3),'FileName','E:\SUPR_<%%%>.dat');
% limit switches
fscopes(3).addsignal(getsignalid(tg,'DAQ/sw/s2'));
fscopes(3).addsignal(getsignalid(tg,'DAQ/sw/s4'));
fscopes(3).addsignal(getsignalid(tg,'DAQ/sw/s6'));
fscopes(3).addsignal(getsignalid(tg,'DAQ/sw/s8'));
% error flags
fscopes(3).addsignal(getsignalid(tg,'DAQ/error_flags/s1'));
fscopes(3).addsignal(getsignalid(tg,'DAQ/error_flags/s2'));
fscopes(3).addsignal(getsignalid(tg,'DAQ/error_flags/s3'));
fscopes(3).addsignal(getsignalid(tg,'DAQ/error_flags/s4'));
fscopes(3).addsignal(getsignalid(tg,'DAQ/error_flags/s5'));
fscopes(3).addsignal(getsignalid(tg,'DAQ/error_flags/s6'));
fscopes(3).addsignal(getsignalid(tg,'DAQ/error_flags/s7'));
% temperatures
fscopes(3).addsignal(getsignalid(tg,'DAQ/temperatures/s7'));
fscopes(3).addsignal(getsignalid(tg,'DAQ/temperatures/s8'));
fscopes(3).addsignal(getsignalid(tg,'DAQ/temperatures/s9'));
fscopes(3).addsignal(getsignalid(tg,'DAQ/temperatures/s10'));
fscopes(3).addsignal(getsignalid(tg,'DAQ/temperatures/s11'));
fscopes(3).addsignal(getsignalid(tg,'DAQ/temperatures/s12'));
% logic voltage
fscopes(3).addsignal(getsignalid(tg,'DAQ/logic_voltages/s2'));
% motor voltage
fscopes(3).addsignal(getsignalid(tg,'DAQ/motor_voltages/s2'));

%%% Controller data
set(fscopes(4),'FileName','E:\CONT_<%%%>.dat');
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/Right Leg Sagittal Sine Wave/R Hip Theta Desired')); 
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/Right Leg Sagittal Sine Wave/HipR/s1')); 
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/Right Leg Sagittal Sine Wave/R Knee Theta Desired')); 
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/Right Leg Sagittal Sine Wave/Sum2/s1')); 
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/Left Leg Sagittal Sine Wave/L Hip Theta Desired')); 
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/Left Leg Sagittal Sine Wave/HipL/s1')); 
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/Left Leg Sagittal Sine Wave/L Knee Theta Desired')); 
fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/Left Leg Sagittal Sine Wave/Sum2/s1')); 
fscopes(4).addsignal(getsignalid(tg,'Control/Actuator Control/RB Unloaded SEA Plant1'));
%fscopes(4).addsignal(getsignalid(tg,'DAQ/raw_encoder_signals/s13'));
% fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/Right Lateral Sine Wave/Diminish/Switch/s1')); 
% fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/Right Lateral Sine Wave/qLatSignal')); 
% fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/Left Lateral Sine Wave/Diminish/Switch/s1')); 
% fscopes(4).addsignal(getsignalid(tg,'Control/Behavior Control/Left Lateral Sine Wave/qLatSignal')); 

fscopes.start();