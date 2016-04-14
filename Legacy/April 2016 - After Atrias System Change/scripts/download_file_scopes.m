%% Retrieve logged data from target machine
f=SimulinkRealTime.fileSystem;
h=f.fopen('D:\POS_001.DAT');
encoder_data=f.fread(h);
f.fclose(h);
h=f.fopen('D:\TORQ_001.DAT');
torque_data=f.fread(h);
f.fclose(h);
h=f.fopen('D:\IMU_001.DAT');
imu_data=f.fread(h);
f.fclose(h);

% Unpack the data.
encoders = SimulinkRealTime.utils.getFileScopeData(encoder_data);
torque = SimulinkRealTime.utils.getFileScopeData(torque_data);
imu = SimulinkRealTime.utils.getFileScopeData(imu_data);
time_recorded = encoders.data(:,end);
q_recorded = [encoders.data(:,1:10), imu.data(:,7:9)];
qinc_recorded = encoders.data(:,27:32);
dq_recorded = [encoders.data(:,14:23), imu.data(:,10:12)];
dqinc_recorded = encoders.data(:,33:38);
tau_recorded = torque.data(:,1:6);
raw_signals = [encoders.data(:,39:46), imu.data(:,[1:6 13 14])];
save(sprintf('data/%s - diagnostic',datestr(clock,'mm_dd_yyyy HH_MM_SS_AM')), 'time_recorded','q_recorded','dq_recorded','tau_recorded','qinc_recorded','dqinc_recorded','raw_signals');