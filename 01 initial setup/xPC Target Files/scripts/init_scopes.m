%% Setup scopes on target machine
number_of_tscopes = 6;
scope_update_freq = 250; % Hz
num_samples = 200;
y_limit = [0 315];

scopes = tg.getscope();
if ~isempty(scopes) 
    scopes.stop;
    tg.remscope(1:size(scopes,1)); % remove all current scopes 
end

tg.addscope('target',1:number_of_tscopes);
scopes = tg.getscope();

set(scopes(1:number_of_tscopes), ...
    'NumSamples', num_samples, ...
    'Decimation', update_freq / scope_update_freq, ...
    'TriggerMode', 'Freerun',...
    'DisplayMode','Numerical',...
    'YLimit', y_limit...
    );

%% Add signals for encoders
scopes.stop();

% right leg
scopes(1).addsignal(getsignalid(tg,'DAQ/q_signals/s3')); % right front leg
scopes(1).addsignal(getsignalid(tg,'DAQ/q_signals/s4')); % right front motor
scopes(1).addsignal(getsignalid(tg,'DAQ/q_signals/s1')); % right back leg
scopes(1).addsignal(getsignalid(tg,'DAQ/q_signals/s2')); % right back motor
% left leg
scopes(1).addsignal(getsignalid(tg,'DAQ/q_signals/s7')); % left front leg
scopes(1).addsignal(getsignalid(tg,'DAQ/q_signals/s8')); % left front motor
scopes(1).addsignal(getsignalid(tg,'DAQ/q_signals/s5')); % left back leg
scopes(1).addsignal(getsignalid(tg,'DAQ/q_signals/s6')); % left back motor
% lateral
scopes(2).addsignal(getsignalid(tg,'DAQ/q_signals/s9')); % right lateral
scopes(2).addsignal(getsignalid(tg,'DAQ/q_signals/s10')); % left lateral
% boom
scopes(2).addsignal(getsignalid(tg,'DAQ/q_signals/s13')); % boom pitch
scopes(2).addsignal(getsignalid(tg,'DAQ/q_signals/s11')); % boom roll
scopes(2).addsignal(getsignalid(tg,'DAQ/q_signals/s12')); % boom yaw
% motor torques
set(scopes(3:6), ...
    'NumSamples', 4000, ... 
    'Decimation', update_freq / scope_update_freq, ...
    'TriggerMode', 'Freerun',...
    'DisplayMode','Rolling',...
    'YLimit', [-120 120]...
    );
scopes(3).addsignal(getsignalid(tg,'DAQ/tau_cmd_signals/s1')); % backR
scopes(3).addsignal(getsignalid(tg,'Actuator Control/tau_desired_signals/s1')); 
scopes(4).addsignal(getsignalid(tg,'DAQ/tau_cmd_signals/s2')); % frontR
scopes(4).addsignal(getsignalid(tg,'Actuator Control/tau_desired_signals/s2'));
scopes(5).addsignal(getsignalid(tg,'DAQ/tau_cmd_signals/s4')); % backL
scopes(5).addsignal(getsignalid(tg,'Actuator Control/tau_desired_signals/s4')); 
scopes(6).addsignal(getsignalid(tg,'DAQ/tau_cmd_signals/s5')); % frontL
scopes(6).addsignal(getsignalid(tg,'Actuator Control/tau_desired_signals/s5'));

%% Start scopes again
scopes.start();

%% Setup host scopes
number_of_hscopes = 1;
scope_update_freq = 250; % Hz
num_samples = 2000;
first_hscope = number_of_tscopes + 1;
tg.addscope('host',first_hscope:first_hscope+number_of_hscopes-1);
hscopes = tg.getscope(first_hscope:first_hscope+number_of_hscopes-1);

set(hscopes(1:number_of_hscopes), ...
    'NumSamples', num_samples, ...
    'Decimation', update_freq / scope_update_freq, ...
    'TriggerMode', 'Freerun'...
    );

%% Add signals for limit switches
hscopes.stop();
% hscopes(1).addsignal(getsignalidsfromlabel(tg,'backSwR'));
% hscopes(1).addsignal(getsignalidsfromlabel(tg,'frontSwR'));
% hscopes(1).addsignal(getsignalidsfromlabel(tg,'backSwL'));
% hscopes(1).addsignal(getsignalidsfromlabel(tg,'frontSwL'));
hscopes.start();

%% Setup file scopes
number_of_fscopes = 3;
first_fscope = number_of_tscopes + number_of_hscopes + 1;
tg.addscope('file',first_fscope:first_fscope+number_of_fscopes-1);
fscopes = tg.getscope(first_fscope:first_fscope+number_of_fscopes-1);
set(fscopes(1:number_of_fscopes), ...
    'NumSamples', num_samples, ...
    'Decimation', update_freq / scope_update_freq, ...
    'TriggerMode', 'Freerun', ...
    'AutoRestart', 'on',...
    'DynamicFileName', 'on'...
    );

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
% angular velocities (simple low pass single pole)
fscopes(1).addsignal(getsignalid(tg,'DAQ/low_pass_derivative/single_pole_filter/s3')); % front right leg
fscopes(1).addsignal(getsignalid(tg,'DAQ/low_pass_derivative/single_pole_filter/s4')); % front right motor
fscopes(1).addsignal(getsignalid(tg,'DAQ/low_pass_derivative/single_pole_filter/s1')); % back right leg
fscopes(1).addsignal(getsignalid(tg,'DAQ/low_pass_derivative/single_pole_filter/s2')); % back right motor
fscopes(1).addsignal(getsignalid(tg,'DAQ/low_pass_derivative/single_pole_filter/s7')); % front left  leg
fscopes(1).addsignal(getsignalid(tg,'DAQ/low_pass_derivative/single_pole_filter/s8')); % front left motor
fscopes(1).addsignal(getsignalid(tg,'DAQ/low_pass_derivative/single_pole_filter/s5')); % back left leg
fscopes(1).addsignal(getsignalid(tg,'DAQ/low_pass_derivative/single_pole_filter/s6')); % back left motor
fscopes(1).addsignal(getsignalid(tg,'DAQ/low_pass_derivative/single_pole_filter/s9')); % right lateral
fscopes(1).addsignal(getsignalid(tg,'DAQ/low_pass_derivative/single_pole_filter/s10')); % left lateral
fscopes(1).addsignal(getsignalid(tg,'DAQ/low_pass_derivative/single_pole_filter/s11')); % boom roll 
fscopes(1).addsignal(getsignalid(tg,'DAQ/low_pass_derivative/single_pole_filter/s12')); % boom yaw 
fscopes(1).addsignal(getsignalid(tg,'DAQ/low_pass_derivative/single_pole_filter/s13')); % boom pitch 
% Non-smoothed
fscopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s3')); % right front leg
fscopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s4')); % right front gear
fscopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s1')); % right back leg
fscopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s2')); % right back gear
fscopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s7')); % left front leg
fscopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s8')); % left front gear
fscopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s5')); % left back leg
fscopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s6')); % left back gear
fscopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s9')); % right lateral
fscopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s10')); % left lateral
fscopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s11')); % boom roll 
fscopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s12')); % boom yaw 
fscopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s13')); % boom pitch 
% Sine PD control
fscopes(1).addsignal(getsignalid(tg,'Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/R Hip Theta Desired')); 
fscopes(1).addsignal(getsignalid(tg,'Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/HipR/s1')); 
fscopes(1).addsignal(getsignalid(tg,'Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/R Knee Theta Desired')); 
fscopes(1).addsignal(getsignalid(tg,'Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/Sum2/s1')); 
fscopes(1).addsignal(getsignalid(tg,'Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/L Hip Theta Desired')); 
fscopes(1).addsignal(getsignalid(tg,'Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/HipL/s1')); 
fscopes(1).addsignal(getsignalid(tg,'Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/L Knee Theta Desired')); 
fscopes(1).addsignal(getsignalid(tg,'Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/Sum2/s1')); 
fscopes(1).addsignal(getsignalid(tg,'Simple Sinusoidal Motion/Right Lateral Sine Wave/Diminish/Switch/s1')); 
fscopes(1).addsignal(getsignalid(tg,'Simple Sinusoidal Motion/Right Lateral Sine Wave/qLatSignal')); 
fscopes(1).addsignal(getsignalid(tg,'Simple Sinusoidal Motion/Left Lateral Sine Wave/Diminish/Switch/s1')); 
fscopes(1).addsignal(getsignalid(tg,'Simple Sinusoidal Motion/Left Lateral Sine Wave/qLatSignal')); 


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
fscopes(2).addsignal(getsignalid(tg,'Actuator Control/tau_desired_signals/s1')); % backR
fscopes(2).addsignal(getsignalid(tg,'Actuator Control/tau_desired_signals/s2')); % frontR
fscopes(2).addsignal(getsignalid(tg,'Actuator Control/tau_desired_signals/s3')); % latR
fscopes(2).addsignal(getsignalid(tg,'Actuator Control/tau_desired_signals/s4')); % backL
fscopes(2).addsignal(getsignalid(tg,'Actuator Control/tau_desired_signals/s5')); % frontL
fscopes(2).addsignal(getsignalid(tg,'Actuator Control/tau_desired_signals/s6')); % latL

%%% Supervisory data
set(fscopes(3),'FileName','E:\SUPR_<%%%>.dat');
set(fscopes(3),'Decimation', update_freq / 250);
% limit switches
fscopes(3).addsignal(getsignalid(tg,'DAQ/sw/s2'));
fscopes(3).addsignal(getsignalid(tg,'DAQ/sw/s4'));
fscopes(3).addsignal(getsignalid(tg,'DAQ/sw/s6'));
fscopes(3).addsignal(getsignalid(tg,'DAQ/sw/s8'));
% error flags
fscopes(3).addsignal(getsignalidsfromlabel(tg,'backRError'));
fscopes(3).addsignal(getsignalidsfromlabel(tg,'frontRError'));
fscopes(3).addsignal(getsignalidsfromlabel(tg,'backLError'));
fscopes(3).addsignal(getsignalidsfromlabel(tg,'frontLError'));
fscopes(3).addsignal(getsignalidsfromlabel(tg,'lateralRError'));
fscopes(3).addsignal(getsignalidsfromlabel(tg,'lateralLError'));
fscopes(3).addsignal(getsignalidsfromlabel(tg,'boomError'));
% voltages
fscopes(3).addsignal(getsignalidsfromlabel(tg,'backRMotorV'));
fscopes(3).addsignal(getsignalidsfromlabel(tg,'frontRMotorV'));
fscopes(3).addsignal(getsignalidsfromlabel(tg,'backLMotorV'));
fscopes(3).addsignal(getsignalidsfromlabel(tg,'frontLMotorV'));
fscopes(3).addsignal(getsignalidsfromlabel(tg,'backRLogicV'));
fscopes(3).addsignal(getsignalidsfromlabel(tg,'frontRLogicV'));
fscopes(3).addsignal(getsignalidsfromlabel(tg,'backLLogicV'));
fscopes(3).addsignal(getsignalidsfromlabel(tg,'frontLLogicV'));
% temperature
fscopes(3).addsignal(getsignalidsfromlabel(tg,'frontLTemp0'));
fscopes(3).addsignal(getsignalidsfromlabel(tg,'frontLTemp1'));
fscopes(3).addsignal(getsignalidsfromlabel(tg,'frontLTemp2'));
fscopes(3).addsignal(getsignalidsfromlabel(tg,'frontLTemp3'));
fscopes(3).addsignal(getsignalidsfromlabel(tg,'frontLTemp4'));
fscopes(3).addsignal(getsignalidsfromlabel(tg,'frontLTemp5'));
fscopes(3).addsignal(getsignalidsfromlabel(tg,'backLTemp0'));
fscopes(3).addsignal(getsignalidsfromlabel(tg,'backLTemp1'));
fscopes(3).addsignal(getsignalidsfromlabel(tg,'backLTemp2'));
fscopes(3).addsignal(getsignalidsfromlabel(tg,'backLTemp3'));
fscopes(3).addsignal(getsignalidsfromlabel(tg,'backLTemp4'));
fscopes(3).addsignal(getsignalidsfromlabel(tg,'backLTemp5'));

fscopes.start();