% Attach to the target computer file system.
f=xpctarget.fs;

% Open the file, read the data, close the file.
h=fopen(f,'E:\POS_001.DAT');
pos_data=fread(f,h);
fclose(f,h);
h=fopen(f,'E:\TORQ_001.DAT');
torq_data=fread(f,h);
fclose(f,h);
h=fopen(f,'E:\SUPR_001.DAT');
supr_data=fread(f,h);
fclose(f,h);

% Unpack the data.
pos = readxpcfile(pos_data);
torq = readxpcfile(torq_data);
supr = readxpcfile(supr_data);

% Plot
clf;
close all;
t = pos.data(:,end);

%% Plot position data
% 1-13: smoothed encoder data
% 14-26: encoder velocities
% 27-39: non-smoothed encoder data
% 40-51: sinewave trajectory data

% Leg Segment Positions (Smoothed)
plot_fscope('Leg Position',{t,t}, {pos.data(:,1:4),pos.data(:,5:8)},...
    {{'qFront';'qFrontGear';'qBack';'qBackGear'},{'qFront';'qFrontGear';'qBack';'qBackGear'}},...
    {'Right Leg Position','Left Leg Position'},{'Time (sec)','Time (sec)'},{'Angle (degrees)','Angle (degrees)'},{[0 350],[0 350]},2);
% Leg Segment Positions (Not Smoothed)
plot_fscope('Leg Position (unsmoothed)',{t,t}, {pos.data(:,27:30),pos.data(:,31:34)},...
    {{'qFront';'qFrontGear';'qBack';'qBackGear'},{'qFront';'qFrontGear';'qBack';'qBackGear'}},...
    {'Right Leg Position','Left Leg Position'},{'Time (sec)','Time (sec)'},{'Angle (degrees)','Angle (degrees)'},{[0 350],[0 350]},2);
% Lateral Positions
plot_fscope('Lateral Position',{t}, {pos.data(:,9:10)},{{'Right';'Left'}},...
    {'Lateral Leg Angles'},{'Time (sec)'},{'Angle (degrees)'},{[-30 30]},1);
% Leg Segment Velocities
plot_fscope('Leg Velocity',{t,t}, {pos.data(:,14:17)*180/pi, pos.data(:,18:21)*180/pi},...
    {{'dqFront';'dqFrontGear';'dqBack';'dqBackGear'},{'dqFront';'dqFrontGear';'dqBack';'dqBackGear'}},...
    {'Right Leg Velocity','Left Leg Velocity'},{'Time (sec)','Time (sec)'},...
    {'Velocity (degrees / sec)','Velocity (degrees / sec)'},{[-100, 100],[-100, 100]},2);
% Leg Angle Trajectory, desired/measured
plot_fscope('Leg Angle Trajectory',{t,t}, {pos.data(:,40:41)*180/pi, pos.data(:,44:45)*180/pi},...
    {{'Desired';'Measured'},{'Desired';'Measured'}},...
    {'Right Leg Angle','Left Leg Angle'},{'Time (sec)','Time (sec)'},...
    {'Position (degrees)','Position (degrees)'},{[0, 350],[0, 350]},2);
% Knee Angle Trajectory, 42:43, 46/47, desired/measured
plot_fscope('Knee Angle Trajectory',{t,t}, {pos.data(:,42:43)*180/pi, pos.data(:,46:47)*180/pi},...
    {{'Desired';'Measured'},{'Desired';'Measured'}},...
    {'Right Knee Angle','Left Knee Angle'},{'Time (sec)','Time (sec)'},...
    {'Position (degrees)','Position (degrees)'},{[0, 350],[0, 350]},2);

%% Plot torque data
% 1-6: commanded motor torques
% 7-12: desired output torques

% spring deflections
deflections = [pos.data(:,4)-pos.data(:,3) pos.data(:,2)-pos.data(:,1) pos.data(:,8)-pos.data(:,7) pos.data(:,6)-pos.data(:,5)];
% torques desired vs measured
spring_forces = deflections * pi/180 * k_sea;
plot_fscope('Leg Torques',{t,t}, {[torq.data(:,7:8) spring_forces(:,1:2)],[torq.data(:,10:11) spring_forces(:,3:4)]}, ...
    {{'Back Desired','Front Desired','Back Measured','Front Measured'},{'Back Desired','Front Desired','Back Measured','Front Measured'}},...
    {'Right Leg Torques','Left Leg Torques'}, {'Time (sec)','Time (sec)'}, {'Torque (Nm)','Torque (Nm)'}, {[-180 180],[-180 180]}, 2);
% commanded motor torques
plot_fscope('Motor Torques',{t,t,t}, {torq.data(:,1:2),torq.data(:,4:5),torq.data(:,[3 6])}, ...
    {{'Back Commanded','Front Commanded'},{'Back Commanded','Front Commanded'},{'Right Commanded','Left Commanded'}},...
    {'Right Leg Torques','Left Leg Torques','Lateral Torques'}, {'Time (sec)','Time (sec)','Time(sec)'}, {'Torque (Nm)','Torque (Nm)','Torque (Nm)'}, {[-180 180],[-180 180],[-180 180]}, 3);

%% Plot supervisory data
% TODO

% save plots
hfigs = get(0, 'children');        %Get list of figures
hgsave(hfigs,sprintf('figures/%s.fig',datestr(clock,'mmmm_dd_yyyy HH_MM_SS_AM')));
