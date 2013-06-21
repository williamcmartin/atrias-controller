%% Setup scopes on target machine
number_of_tscopes = 4;
scope_update_freq = 1000; % Hz
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

%% right leg, left leg
scopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s3')); % right front leg
scopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s4')); % right front motor
scopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s1')); % right back leg
scopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s2')); % right back motor
scopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s7')); % left front leg
scopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s8')); % left front motor
scopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s5')); % left back leg
scopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s6')); % left back motor
%% lateral and boom
scopes(3).addsignal(getsignalid(tg,'UMich Controller/lateral_PID_control/spherical_correction_angle/lateral_correction')); % lateral correction
scopes(3).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s9')); % right lateral
scopes(3).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s10')); % left lateral
scopes(3).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s13')); % boom pitch
scopes(3).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s11')); % boom roll
scopes(3).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s12')); % boom yaw
% scopes(3).addsignal(getsignalid(tg,'DAQ/raw_signals/s13')); % boom pitch

% desired and measured torques
set(scopes(2), ...
    'NumSamples', 4000, ... 
    'Decimation', update_freq / scope_update_freq, ...
    'TriggerMode', 'Freerun',...
    'DisplayMode','Rolling',...
    'YLimit', [-120 120]...
    );
scopes(2).addsignal(getsignalid(tg,'Measurements/spring_torques/s2'));
scopes(2).addsignal(getsignalid(tg,'UMich Controller/current_cmds/s2')); 
% % current commands
scopes(4).addsignal(getsignalid(tg,'UMich Controller/current_cmds/s1')); % backR
scopes(4).addsignal(getsignalid(tg,'UMich Controller/current_cmds/s2')); % frontR
scopes(4).addsignal(getsignalid(tg,'UMich Controller/current_cmds/s3')); % latR
scopes(4).addsignal(getsignalid(tg,'UMich Controller/current_cmds/s4')); % backL
scopes(4).addsignal(getsignalid(tg,'UMich Controller/current_cmds/s5')); % frontL
scopes(4).addsignal(getsignalid(tg,'UMich Controller/current_cmds/s6')); % latL
scopes(4).addsignal(getsignalid(tg,'UMich Controller/s_signals')); 
% % y signals 
% scopes(6).addsignal(getsignalid(tg,'UMich Controller/y_signals/s1')); % theta_hip_R
% scopes(6).addsignal(getsignalid(tg,'UMich Controller/y_signals/s2')); % theta_hip_L
% scopes(6).addsignal(getsignalid(tg,'UMich Controller/y_signals/s3')); % theta_lat_R
% scopes(6).addsignal(getsignalid(tg,'UMich Controller/y_signals/s4')); % theta_splay_R
% scopes(6).addsignal(getsignalid(tg,'UMich Controller/y_signals/s5')); % theta_splay_L
% scopes(6).addsignal(getsignalid(tg,'UMich Controller/y_signals/s6')); % theta_lat_L
% % s and pd signals
% scopes(7).addsignal(getsignalid(tg,'UMich Controller/s_signals')); 
% scopes(7).addsignal(getsignalid(tg,'UMich Controller/pd_signals/s1')); 
% scopes(7).addsignal(getsignalid(tg,'UMich Controller/pd_signals/s2')); 
% scopes(7).addsignal(getsignalid(tg,'UMich Controller/pd_signals/s3')); 
% scopes(7).addsignal(getsignalid(tg,'UMich Controller/pd_signals/s4')); 
% commanded torques
% scopes(4).addsignal(getsignalid(tg,'Actuator Control/tau_cmd_signal/s1')); 
% scopes(4).addsignal(getsignalid(tg,'Actuator Control/tau_cmd_signal/s2')); 
% scopes(4).addsignal(getsignalid(tg,'Actuator Control/tau_cmd_signal/s3')); 
% scopes(4).addsignal(getsignalid(tg,'Actuator Control/tau_cmd_signal/s4')); 
% scopes(4).addsignal(getsignalid(tg,'Actuator Control/tau_cmd_signal/s5')); 
% scopes(4).addsignal(getsignalid(tg,'Actuator Control/tau_cmd_signal/s6')); 

%% Start scopes again
scopes.start();


%% Setup host scopes
number_of_hscopes = 3;
scope_update_freq = 250; % Hz
num_samples = 2000;
first_hscope = number_of_tscopes + 1;
tg.addscope('host',first_hscope:first_hscope+number_of_hscopes-1);
hscopes = tg.getscope(first_hscope:first_hscope+number_of_hscopes-1);

% set(hscopes(1:number_of_hscopes), ...
%     'NumSamples', num_samples, ...
%     'Decimation', update_freq / scope_update_freq, ...
%     'TriggerMode', 'Freerun'...
%     );
% 
% %% Add signals for limit switches
% hscopes.stop();
% hscopes(1).addsignal(getsignalidsfromlabel(tg,'backSwR'));
% hscopes(1).addsignal(getsignalidsfromlabel(tg,'frontSwR'));
% hscopes(1).addsignal(getsignalidsfromlabel(tg,'backSwL'));
% hscopes(1).addsignal(getsignalidsfromlabel(tg,'frontSwL'));
% hscopes.start();

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
% angular positions
set(fscopes(1),'FileName','E:\POS_<%%%>.dat');
fscopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s3')); % right front leg
fscopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s4')); % right front gear
fscopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s1')); % right back leg
fscopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s2')); % right back gear
fscopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s7')); % left front leg
fscopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s8')); % left front gear
fscopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s5')); % left back leg
fscopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s6')); % left back gear
fscopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s13')); % torso pitch 
% commanded torques
fscopes(1).addsignal(getsignalid(tg,'Actuator Control/tau_cmd_signal/s1')); 
fscopes(1).addsignal(getsignalid(tg,'Actuator Control/tau_cmd_signal/s2')); 
fscopes(1).addsignal(getsignalid(tg,'Actuator Control/tau_cmd_signal/s3')); 
fscopes(1).addsignal(getsignalid(tg,'Actuator Control/tau_cmd_signal/s4')); 
fscopes(1).addsignal(getsignalid(tg,'Actuator Control/tau_cmd_signal/s5')); 
fscopes(1).addsignal(getsignalid(tg,'Actuator Control/tau_cmd_signal/s6')); 
% desired torques
fscopes(1).addsignal(getsignalid(tg,'UMich Controller/current_cmds/s1')); % backR
fscopes(1).addsignal(getsignalid(tg,'UMich Controller/current_cmds/s2')); % frontR
fscopes(1).addsignal(getsignalid(tg,'UMich Controller/current_cmds/s3')); % latR
fscopes(1).addsignal(getsignalid(tg,'UMich Controller/current_cmds/s4')); % backL
fscopes(1).addsignal(getsignalid(tg,'UMich Controller/current_cmds/s5')); % frontL
fscopes(1).addsignal(getsignalid(tg,'UMich Controller/current_cmds/s6')); % latL
% lateral angles
fscopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s9')); % right lateral
fscopes(1).addsignal(getsignalid(tg,'DAQ/OSU_to_CMU/signal/s10')); % left lateral

% angular velocities (simple low pass single pole)
set(fscopes(2),'FileName','E:\VEL_<%%%>.dat');
fscopes(2).addsignal(getsignalid(tg,'DAQ/low_pass_derivative/single_pole_filter/s3')); % front right leg
fscopes(2).addsignal(getsignalid(tg,'DAQ/low_pass_derivative/single_pole_filter/s4')); % front right motor
fscopes(2).addsignal(getsignalid(tg,'DAQ/low_pass_derivative/single_pole_filter/s1')); % back right leg
fscopes(2).addsignal(getsignalid(tg,'DAQ/low_pass_derivative/single_pole_filter/s2')); % back right motor

fscopes(2).addsignal(getsignalid(tg,'DAQ/low_pass_derivative/single_pole_filter/s7')); % front left  leg
fscopes(2).addsignal(getsignalid(tg,'DAQ/low_pass_derivative/single_pole_filter/s8')); % front left motor
fscopes(2).addsignal(getsignalid(tg,'DAQ/low_pass_derivative/single_pole_filter/s5')); % back left leg
fscopes(2).addsignal(getsignalid(tg,'DAQ/low_pass_derivative/single_pole_filter/s6')); % back left motor

% error signals
fscopes(2).addsignal(getsignalid(tg,'UMich Controller/y_signals/s1')); % theta_hip_R
fscopes(2).addsignal(getsignalid(tg,'UMich Controller/y_signals/s2')); % theta_hip_L
fscopes(2).addsignal(getsignalid(tg,'UMich Controller/y_signals/s3')); % theta_lat_R
fscopes(2).addsignal(getsignalid(tg,'UMich Controller/y_signals/s4')); % theta_splay_R
fscopes(2).addsignal(getsignalid(tg,'UMich Controller/y_signals/s5')); % theta_splay_L
fscopes(2).addsignal(getsignalid(tg,'UMich Controller/y_signals/s6')); % theta_lat_L

set(fscopes(3),'FileName','E:\LIM_<%%%>.dat');
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
% currents
% fscopes(3).addsignal(getsignalidsfromlabel(tg,'backLAmp1'));
% fscopes(3).addsignal(getsignalidsfromlabel(tg,'backLAmp2'));
% fscopes(3).addsignal(getsignalidsfromlabel(tg,'frontLAmp1'));
% fscopes(3).addsignal(getsignalidsfromlabel(tg,'frontLAmp2'));
% fscopes(3).addsignal(getsignalidsfromlabel(tg,'backRAmp1'));
% fscopes(3).addsignal(getsignalidsfromlabel(tg,'backRAmp2'));
% fscopes(3).addsignal(getsignalidsfromlabel(tg,'frontRAmp1'));
% fscopes(3).addsignal(getsignalidsfromlabel(tg,'frontRAmp2'));

fscopes.start();