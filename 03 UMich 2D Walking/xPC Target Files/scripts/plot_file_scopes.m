% Attach to the target computer file system.
f=xpctarget.fs;

% Open the file, read the data, close the file.
h=fopen(f,'E:\POS_001.DAT');
pos_data=fread(f,h);
fclose(f,h);
h=fopen(f,'E:\VEL_001.DAT');
vel_data=fread(f,h);
fclose(f,h);

% Unpack the data.
vel = readxpcfile(vel_data);
pos = readxpcfile(pos_data);

% Plot
clf;
close all;
t = pos.data(:,end);
t2 = vel.data(:,end);


%% leg position
plot_fscope('Leg Position',{t,t}, {pos.data(:,1:4),pos.data(:,5:8)},...
    {{'qFront';'qFrontGear';'qBack';'qBackGear'},{'qFront';'qFrontGear';'qBack';'qBackGear'}},...
    {'Right Leg Position','Left Leg Position'},{'Time (sec)','Time (sec)'},{'Angle (degrees)','Angle (degrees)'},{[0 350],[0 350]},2);

%% torso pitch
plot_fscope('Torso Pitch',t, pos.data(:,9),{'qBoomPitch'},'Torso Pitch','Time (sec)','Angle (degrees)',[-20 20],1);

%% spring deflections
deflections = [pos.data(:,4)-pos.data(:,3) pos.data(:,2)-pos.data(:,1) pos.data(:,8)-pos.data(:,7) pos.data(:,6)-pos.data(:,5)];
plot_fscope('Spring Deflections',t, deflections, {'R Back','R Front','L Back','L Front'}, 'Spring Deflections', 'Time (sec)', 'Angle Delta (degrees)', [-10 10], 1);

%% torques desired and commanded
spring_forces = deflections * pi/180 * k_leg_spring;
plot_fscope('Leg Torques',{t,t}, {[pos.data(:,16:17) spring_forces(:,1:2)],[pos.data(:,19:20) spring_forces(:,3:4)]}, ...
    {{'Back Desired','Front Desired','Back Measured','Front Measured'},{'Back Desired','Front Desired','Back Measured','Front Measured'}},...
    {'Right Leg Torques','Left Leg Torques'}, {'Time (sec)','Time (sec)'}, {'Force (Nm)','Force (Nm)'}, {[-180 180],[-180 180]}, 2);

% pos.data(:,10:11) pos.data(:,13:14)]

%% leg velocity (single pole)
plot_fscope('Leg Velocity',{t2,t2}, {vel.data(:,1:4)*180/pi, vel.data(:,5:8)*180/pi},...
    {{'dqFront';'dqFrontGear';'dqBack';'dqBackGear'},{'dqFront';'dqFrontGear';'dqBack';'dqBackGear'}},...
    {'Right Leg Velocity','Left Leg Velocity'},{'Time (sec)','Time (sec)'},...
    {'Velocity (degrees / sec)','Velocity (degrees / sec)'},{[-100, 100],[-100, 100]},2);

%% desired vs measured
right_leg_angle = (pos.data(:,2) + pos.data(:,4))/2;
left_leg_angle = (pos.data(:,6) + pos.data(:,8))/2;
des_right_leg_angle = right_leg_angle - vel.data(:,9);
des_left_leg_angle = left_leg_angle - vel.data(:,10);

% leg angle
plot_fscope('Leg Angle',{t2,t2}, {[des_right_leg_angle right_leg_angle],[des_left_leg_angle left_leg_angle]},...
    {{'desired';'measured'},{'desired';'measured'}},{'Right Leg Angle','Left Leg Angle'},{'Time (sec)','Time (sec)'},...
    {'Angle (degrees)','Angle (degrees)'},{'auto','auto'},2);

right_splay = (pos.data(:,4) - pos.data(:,2));
left_splay = (pos.data(:,8) - pos.data(:,6));
des_right_splay = right_splay -  vel.data(:,12);
des_left_splay = left_splay -  vel.data(:,13);

% leg splay
plot_fscope('Leg Splay',{t2,t2}, {[des_right_splay right_splay],[des_left_splay left_splay]},...
    {{'desired';'measured'},{'desired';'measured'}},{'Right Splay','Left Splay'},{'Time (sec)','Time (sec)'},...
    {'Angle (degrees)','Angle (degrees)'},{'auto','auto'},2);

%% save all open plots
hfigs = get(0, 'children');        %Get list of figures
hgsave(hfigs,sprintf('figures/%s.fig',datestr(clock,'mmmm_dd_yyyy HH_MM_SS_AM')));
