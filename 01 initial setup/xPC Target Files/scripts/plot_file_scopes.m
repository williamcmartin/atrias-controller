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


% right leg position
plot_fscope(100, t, pos.data(:,1:4),{'qFront';'qFrontGear';'qBack';'qBackGear'},'Right Leg Position','Time (sec)','Angle (degrees)',[0 350]);

% left leg position
plot_fscope(101, t, pos.data(:,5:8),{'qFront';'qFrontGear';'qBack';'qBackGear'},'Left Leg Position','Time (sec)','Angle (degrees)',[0 350]);

% right leg velocity (single pole)
plot_fscope(106, t2, vel.data(:,1:4)*180/pi,{'dqFront';'dqFrontGear';'dqBack';'dqBackGear'},'Right Leg Velocity (single pole)','Time (sec)','Velocity (degrees / sec)',[-100, 100]);

% left leg velocity (single pole)
plot_fscope(107, t2, vel.data(:,5:8)*180/pi,{'dqFront';'dqFrontGear';'dqBack';'dqBackGear'},'Left Leg Velocity (single pole)','Time (sec)','Velocity (degrees / sec)',[-100, 100]);

%% desired vs measured
plot_fscope(108, t2, vel.data(:,9:10)*180/pi,{'desired';'measured'},'Right Leg Angle','Time (sec)','Angle (degrees)','auto');
plot_fscope(109, t2, vel.data(:,11:12)*180/pi,{'desired';'measured'},'Right Knee Angle','Time (sec)','Angle (degrees)','auto');
plot_fscope(110, t2, vel.data(:,13:14)*180/pi,{'desired';'measured'},'Left Leg Angle','Time (sec)','Angle (degrees)','auto');
plot_fscope(111, t2, vel.data(:,15:16)*180/pi,{'desired';'measured'},'Left Knee Angle','Time (sec)','Angle (degrees)','auto');
plot_fscope(112, t2, vel.data(:,17:18)*180/pi,{'desired';'measured'},'Right Lateral Angle','Time (sec)','Angle (degrees)',[-10 20]);
plot_fscope(113, t2, vel.data(:,19:20)*180/pi,{'desired';'measured'},'Left Lateral Angle','Time (sec)','Angle (degrees)',[-10 20]);

% save plots
hfigs = get(0, 'children');        %Get list of figures
hgsave(hfigs,sprintf('figures/%s.fig',datestr(clock,'mmmm_dd_yyyy HH_MM_SS_AM')));
