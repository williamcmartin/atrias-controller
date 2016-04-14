%%% Script for initializing basic file logging and target machine scopes.
%   Logs at 250 Hz by default, change logging_freq to modify this.
%   Tracks positions, velocities, torque commands, etc.
%   Also tweaks model sample time to ensure EtherCAT synchronization.

%% Augment target machine sample time to synchronize DC clocks
tg = slrt;
tg.SampleTime = correctedSampleTime;

%% Remove old file scopes
scopes = tg.getscope();
if ~isempty(scopes) 
    scopes.stop;
    for i=1:size(scopes,1)
        if strcmp(scopes(i).type, 'File')
            tg.remscope(i);
        end
    end
end

%% Path to data acquisition block
daq_path = 'atrias_system/DAQ/';
system_path = 'atrias_system/';

%% Setup core file scopes
logging_freq = 250;
decimation = update_freq / logging_freq;
num_samples = 4*logging_freq;
number_of_fscopes = 3;
fscopes = [];
for i=1:number_of_fscopes
    fscopes = [fscopes tg.addscope('file')];
end
set(fscopes(1:number_of_fscopes), ...
    {'NumSamples', 'Decimation', 'WriteMode', 'AutoRestart', 'DynamicFileName'}, ...
    {num_samples,  decimation,  'Lazy',      'on',          'on'});

% Position data
set(fscopes(1),'FileName','D:\POS_<%%%>.dat');
% Positions
fscopes(1).addsignal(getsignalid(tg,[daq_path 'q_signals/s1'])); % right back leg
fscopes(1).addsignal(getsignalid(tg,[daq_path 'q_signals/s2'])); % right back gear
fscopes(1).addsignal(getsignalid(tg,[daq_path 'q_signals/s3'])); % right front leg
fscopes(1).addsignal(getsignalid(tg,[daq_path 'q_signals/s4'])); % right front gear
fscopes(1).addsignal(getsignalid(tg,[daq_path 'q_signals/s5'])); % left back leg
fscopes(1).addsignal(getsignalid(tg,[daq_path 'q_signals/s6'])); % left back gear
fscopes(1).addsignal(getsignalid(tg,[daq_path 'q_signals/s7'])); % left front leg
fscopes(1).addsignal(getsignalid(tg,[daq_path 'q_signals/s8'])); % left front gear
fscopes(1).addsignal(getsignalid(tg,[daq_path 'q_signals/s9'])); % right lateral
fscopes(1).addsignal(getsignalid(tg,[daq_path 'q_signals/s10'])); % left lateral
fscopes(1).addsignal(getsignalid(tg,[daq_path 'q_signals/s11'])); % boom roll 
fscopes(1).addsignal(getsignalid(tg,[daq_path 'q_signals/s12'])); % boom yaw 
fscopes(1).addsignal(getsignalid(tg,[daq_path 'q_signals/s13'])); % boom pitch 
% Velocities
fscopes(1).addsignal(getsignalid(tg,[daq_path 'dq_signals/s1'])); % back right leg
fscopes(1).addsignal(getsignalid(tg,[daq_path 'dq_signals/s2'])); % back right motor
fscopes(1).addsignal(getsignalid(tg,[daq_path 'dq_signals/s3'])); % front right leg
fscopes(1).addsignal(getsignalid(tg,[daq_path 'dq_signals/s4'])); % front right motor
fscopes(1).addsignal(getsignalid(tg,[daq_path 'dq_signals/s5'])); % back left leg
fscopes(1).addsignal(getsignalid(tg,[daq_path 'dq_signals/s6'])); % back left motor
fscopes(1).addsignal(getsignalid(tg,[daq_path 'dq_signals/s7'])); % front left  leg
fscopes(1).addsignal(getsignalid(tg,[daq_path 'dq_signals/s8'])); % front left motor
fscopes(1).addsignal(getsignalid(tg,[daq_path 'dq_signals/s9'])); % right lateral
fscopes(1).addsignal(getsignalid(tg,[daq_path 'dq_signals/s10'])); % left lateral
fscopes(1).addsignal(getsignalid(tg,[daq_path 'dq_signals/s11'])); % boom roll 
fscopes(1).addsignal(getsignalid(tg,[daq_path 'dq_signals/s12'])); % boom yaw 
fscopes(1).addsignal(getsignalid(tg,[daq_path 'dq_signals/s13'])); % boom pitch
% Rotor
fscopes(1).addsignal(getsignalid(tg,[daq_path 'qinc_signals/s1'])); % 27, RB
fscopes(1).addsignal(getsignalid(tg,[daq_path 'qinc_signals/s2'])); % 28, RF
fscopes(1).addsignal(getsignalid(tg,[daq_path 'qinc_signals/s3'])); % 29, LB
fscopes(1).addsignal(getsignalid(tg,[daq_path 'qinc_signals/s4'])); % 30, LF
fscopes(1).addsignal(getsignalid(tg,[daq_path 'qinc_signals/s5'])); % 31, RH
fscopes(1).addsignal(getsignalid(tg,[daq_path 'qinc_signals/s6'])); % 32, LH
fscopes(1).addsignal(getsignalid(tg,[daq_path 'dqinc_signals/s1'])); % 33, RB
fscopes(1).addsignal(getsignalid(tg,[daq_path 'dqinc_signals/s2'])); % 34, RF
fscopes(1).addsignal(getsignalid(tg,[daq_path 'dqinc_signals/s3'])); % 35, LB
fscopes(1).addsignal(getsignalid(tg,[daq_path 'dqinc_signals/s4'])); % 36, LF
fscopes(1).addsignal(getsignalid(tg,[daq_path 'dqinc_signals/s5'])); % 37, RH
fscopes(1).addsignal(getsignalid(tg,[daq_path 'dqinc_signals/s6'])); % 38, LH
% Raw renishaws
fscopes(1).addsignal(getsignalid(tg,[daq_path 'raw_encoder_signals/s1']));
fscopes(1).addsignal(getsignalid(tg,[daq_path 'raw_encoder_signals/s2']));
fscopes(1).addsignal(getsignalid(tg,[daq_path 'raw_encoder_signals/s3']));
fscopes(1).addsignal(getsignalid(tg,[daq_path 'raw_encoder_signals/s4']));
fscopes(1).addsignal(getsignalid(tg,[daq_path 'raw_encoder_signals/s5']));
fscopes(1).addsignal(getsignalid(tg,[daq_path 'raw_encoder_signals/s6']));
fscopes(1).addsignal(getsignalid(tg,[daq_path 'raw_encoder_signals/s7']));
fscopes(1).addsignal(getsignalid(tg,[daq_path 'raw_encoder_signals/s8']));

% Torque data
set(fscopes(2),'FileName','D:\TORQ_<%%%>.dat');
% Commanded torques
fscopes(2).addsignal(getsignalid(tg,[daq_path 'tau_cmd_signals/s1'])); 
fscopes(2).addsignal(getsignalid(tg,[daq_path 'tau_cmd_signals/s2'])); 
fscopes(2).addsignal(getsignalid(tg,[daq_path 'tau_cmd_signals/s3'])); 
fscopes(2).addsignal(getsignalid(tg,[daq_path 'tau_cmd_signals/s4'])); 
fscopes(2).addsignal(getsignalid(tg,[daq_path 'tau_cmd_signals/s5'])); 
fscopes(2).addsignal(getsignalid(tg,[daq_path 'tau_cmd_signals/s6'])); 
% EtherCAT
fscopes(2).addsignal(getsignalid(tg,'atrias_system/EtherCAT Init/s4'));

% IMU data
set(fscopes(3),'FileName','D:\IMU_<%%%>.dat');
fscopes(3).addsignal(getsignalid(tg,'imu_data/s1'));
fscopes(3).addsignal(getsignalid(tg,'imu_data/s2'));
fscopes(3).addsignal(getsignalid(tg,'imu_data/s3'));
fscopes(3).addsignal(getsignalid(tg,'imu_data/s4'));
fscopes(3).addsignal(getsignalid(tg,'imu_data/s5'));
fscopes(3).addsignal(getsignalid(tg,'imu_data/s6'));
fscopes(3).addsignal(getsignalid(tg,'imu_positions/s1'));
fscopes(3).addsignal(getsignalid(tg,'imu_positions/s2'));
fscopes(3).addsignal(getsignalid(tg,'imu_positions/s3'));
fscopes(3).addsignal(getsignalid(tg,'imu_velocities/s1'));
fscopes(3).addsignal(getsignalid(tg,'imu_velocities/s2'));
fscopes(3).addsignal(getsignalid(tg,'imu_velocities/s3'));
fscopes(3).addsignal(getsignalid(tg,'imu_debug/s1'));
fscopes(3).addsignal(getsignalid(tg,'imu_debug/s2'));
fscopes.start();