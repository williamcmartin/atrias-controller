% Attach to the target computer file system.
f=SimulinkRealTime.fileSystem;

% Open the file, read the data, close the file.
h=f.fopen('E:\POS_001.DAT');
pos_data=f.fread(h);
f.fclose(h);
h=f.fopen('E:\TORQ_001.DAT');
torq_data=f.fread(h);
f.fclose(h);
h=f.fopen('E:\SUPR_001.DAT');
supr_data=f.fread(h);
f.fclose(h);
h=f.fopen('E:\CONT_001.DAT');
cont_data=f.fread(h);
f.fclose(h);

% Unpack the data.
pos = SimulinkRealTime.utils.getFileScopeData(pos_data);
torq = SimulinkRealTime.utils.getFileScopeData(torq_data);
supr = SimulinkRealTime.utils.getFileScopeData(supr_data);
cont = SimulinkRealTime.utils.getFileScopeData(cont_data);

%% Plot
clf;
close all;
t = pos.data(:,end);
contact = ~cont.data(:,1);
right_left = cont.data(:,2);

%% Plot position data
% 1-13: smoothed encoder data
% 14-26: encoder velocities

% Leg Segment Positions (Smoothed)
plot_fscope('Leg Position',{t,t}, {pos.data(:,1:4)*180/pi,pos.data(:,5:8)*180/pi},...
    {{'qFront';'qFrontGear';'qBack';'qBackGear'},{'qFront';'qFrontGear';'qBack';'qBackGear'}},...
    {'Right Leg Position','Left Leg Position'},{'Time (sec)','Time (sec)'},{'Angle (degrees)','Angle (degrees)'},{[0 350],[0 350]},2,[]);
% Leg Segment Velocities
plot_fscope('Leg Velocity',{t,t}, {pos.data(:,14:17)*180/pi, pos.data(:,18:21)*180/pi},...
    {{'dqFront';'dqFrontGear';'dqBack';'dqBackGear'},{'dqFront';'dqFrontGear';'dqBack';'dqBackGear'}},...
    {'Right Leg Velocity','Left Leg Velocity'},{'Time (sec)','Time (sec)'},...
    {'Velocity (degrees / sec)','Velocity (degrees / sec)'},{[-100, 100],[-100, 100]},2,[]);
% Virtual Leg Length
right_leg_length = cos((pos.data(:,3)-pos.data(:,1))/2);
left_leg_length = cos((pos.data(:,7)-pos.data(:,5))/2);
plot_fscope('Virtual Leg Length',{t,t}, {right_leg_length, left_leg_length},...
    {{'Measured'},{'Measured'}},...
    {'Right Leg Length','Left Leg Length'},{'Time (sec)','Time (sec)'},...
    {'Length (m)','Length (m)'},{[0, 1],[0, 1]},2,[]);
% Virtual Leg Angle
right_leg_angle = (pos.data(:,3)+pos.data(:,1))/2*180/pi;
left_leg_angle = (pos.data(:,7)+pos.data(:,5))/2*180/pi;
plot_fscope('Virtual Leg Angle',{t,t}, {right_leg_angle, left_leg_angle},...
    {{'Measured'},{'Measured'}},...
    {'Right Leg Angle','Left Leg Angle'},{'Time (sec)','Time (sec)'},...
    {'Angle (degrees)','Angle (degrees)'},{[90, 270],[90, 270]},2,[]);
% Lateral Positions
boom_roll = pos.data(:,11);
desired_lateral = (boom_roll - boom_mount_angle)*180/pi;
plot_fscope('Lateral Position',{t}, {[pos.data(:,9:10)*180/pi desired_lateral -desired_lateral]},{{'Right Measured';'Left Measured';'Right Desired';'Left Desired'}},...
    {'Lateral Leg Angles'},{'Time (sec)'},{'Angle (degrees)'},{[-30 30]},1,[]);

%% Plot torque data
% 1-6: commanded motor torques
% 7-12: desired output torques

% contacts
contact_shading = {2000*(right_left&contact), 2000*(~right_left&contact)};
% spring deflections
deflections = [pos.data(:,4)-pos.data(:,3) pos.data(:,2)-pos.data(:,1) pos.data(:,8)-pos.data(:,7) pos.data(:,6)-pos.data(:,5)];
% torques desired vs measured
spring_forces = bsxfun(@times, deflections, k_sea);
desired_forces = [torq.data(:,7:8) torq.data(:,10:11)];
plot_fscope('Leg Torques',{t,t}, {[torq.data(:,7:8) spring_forces(:,1:2)],[torq.data(:,10:11) spring_forces(:,3:4)]}, ...
    {{'Contact','Back Desired','Front Desired','Back Measured','Front Measured'},{'Contact','Back Desired','Front Desired','Back Measured','Front Measured'}},...
    {'Right Leg Torques','Left Leg Torques'}, {'Time (sec)','Time (sec)'}, {'Torque (Nm)','Torque (Nm)'}, {[-400 400],[-400 400]}, 2, contact_shading);
% commanded motor torques
commanded_forces = [torq.data(:,1:2) torq.data(:,4:5)];
plot_fscope('Motor Torques',{t,t}, {torq.data(:,1:2),torq.data(:,4:5)}, ...
    {{'Back Commanded','Front Commanded'},{'Back Commanded','Front Commanded'}},...
    {'Right Leg Torques','Left Leg Torques'}, {'Time (sec)','Time (sec)'}, {'Torque (Nm)','Torque (Nm)'}, {[-180 180],[-180 180]}, 2, []);
% leg force
    right_leg_force_measured = (spring_forces(:,2)-spring_forces(:,1)) ./ sin((pos.data(:,3)-pos.data(:,1))/2);
    right_leg_force_desired = (torq.data(:,8)-torq.data(:,7)) ./ sin((pos.data(:,3)-pos.data(:,1))/2);
    left_leg_force_measured = (spring_forces(:,4)-spring_forces(:,3)) ./ sin((pos.data(:,7)-pos.data(:,5))/2);
    left_leg_force_desired = (torq.data(:,11)-torq.data(:,10)) ./ sin((pos.data(:,7)-pos.data(:,5))/2);
plot_fscope('Leg Forces',{t,t}, {[right_leg_force_measured right_leg_force_desired], [left_leg_force_measured left_leg_force_desired]}, ...
    {{'Contact','Measured','Desired'},{'Contact','Measured','Desired'}},...
    {'Right Leg Force','Left Leg Force'}, {'Time (sec)','Time (sec)'}, {'Force (N)','Force (N)'}, {[-20 1400],[-20 1400]}, 2, contact_shading);

%% Plot controller data
figure('Name','Desired Leg Angle');
hold on;
area(t,360*contact,'LineStyle','none','FaceColor',0.9*[1 1 1]);
plot(t,cont.data(:,8)*180/pi)
plot(t,left_leg_angle,'m')
plot(t,right_leg_angle,'g')
legend('contact','desired leg angle','left leg angle','right leg angle');
hold off;


figure('Name','Filtered Velocities');
hold on;
plot(t,cont.data(:,4));
plot(t,cont.data(:,5),'r');
plot(t,cont.data(:,6),'g');
legend('dx','dy','dy_{TO}');
hold off;

figure('Name','Time to Apex');
plot(t,cont.data(:,6)/g_reduced,'g');


figure('Name','System Energy');
hold on;
plot(t,cont.data(:,7));
hold off;

alpha_r = pos.data(:,13)*180/pi + right_leg_angle - 90;
alpha_l = pos.data(:,13)*180/pi + left_leg_angle - 90;
figure('Name','Alpha Target');
hold on;
area(t,360*contact,'LineStyle','none','FaceColor',0.9*[1 1 1]);
plot(t,cont.data(:,13)*180/pi);
plot(t,alpha_r,'r');
plot(t,alpha_l,'g');
legend('Contact','Alpha Target', 'Right Alpha', 'Left Alpha');
hold off;

% save data
%hfigs = get(0, 'children');        %Get list of figures
%hgsave(hfigs,sprintf('figures/%s.fig',datestr(clock,'mmmm_dd_yyyy HH_MM_SS_AM')));
save(sprintf('data/%s',datestr(clock,'mmmm_dd_yyyy HH_MM_SS_AM')), 'pos', 'torq','cont');

