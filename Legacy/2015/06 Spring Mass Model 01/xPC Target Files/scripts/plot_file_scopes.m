%% Retrieve logged data from target machine
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
save(sprintf('data/%s',datestr(clock,'mmmm_dd_yyyy HH_MM_SS_AM')), 'pos','torq','supr','cont');

%% Plot data in workspace
clf;
close all;
t = pos.data(:,end);
contact = ~cont.data(:,1);
right_left = cont.data(:,2);

% Plot position data
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
% Toros pitch
torso_pitch = pos.data(:,13)*180/pi;
plot_fscope('Torso Pitch',{t}, {[torso_pitch]},{{'Pitch'}},...
    {'Torso Pitch'},{'Time (sec)'},{'Angle (degrees)'},{[-30 30]},1,[]);
% Lateral Positions
boom_roll = pos.data(:,11);
desired_lateral = (boom_roll - boom_mount_angle)*180/pi;
plot_fscope('Lateral Position',{t}, {[pos.data(:,9:10)*180/pi desired_lateral -desired_lateral]},{{'Right Measured';'Left Measured';'Right Desired';'Left Desired'}},...
    {'Lateral Leg Angles'},{'Time (sec)'},{'Angle (degrees)'},{[-30 30]},1,[]);

% Plot torque data
% 1-6: commanded motor torques
% 7-12: desired output torques

% contacts
contact_right_left = {100000*(right_left&contact), 100000*(~right_left&contact)};
contact_all = {100000*contact, 100000*contact};
% spring deflections
deflections = [pos.data(:,4)-pos.data(:,3) pos.data(:,2)-pos.data(:,1) pos.data(:,8)-pos.data(:,7) pos.data(:,6)-pos.data(:,5)];
% torques desired vs measured
spring_forces = bsxfun(@times, deflections, k_sea);
desired_forces = [torq.data(:,7:8) torq.data(:,10:11)];
plot_fscope('Leg Torques',{t,t}, {[torq.data(:,7:8) spring_forces(:,1:2)],[torq.data(:,10:11) spring_forces(:,3:4)]}, ...
    {{'Contact','Back Desired','Front Desired','Back Measured','Front Measured'},{'Contact','Back Desired','Front Desired','Back Measured','Front Measured'}},...
    {'Right Leg Torques','Left Leg Torques'}, {'Time (sec)','Time (sec)'}, {'Torque (Nm)','Torque (Nm)'}, {[-400 400],[-400 400]}, 2, contact_right_left);
% commanded motor torques
commanded_forces = [torq.data(:,1:2) torq.data(:,4:5)];
plot_fscope('Motor Torques',{t,t}, {torq.data(:,1:2),torq.data(:,4:5)}, ...
    {{'Back Commanded','Front Commanded'},{'Back Commanded','Front Commanded'}},...
    {'Right Leg Torques','Left Leg Torques'}, {'Time (sec)','Time (sec)'}, {'Torque (Nm)','Torque (Nm)'}, {[-400 400],[-400 400]}, 2, []);
% leg force
    right_leg_force_measured = (spring_forces(:,2)-spring_forces(:,1)) ./ sin((pos.data(:,3)-pos.data(:,1))/2);
    right_leg_force_desired = (torq.data(:,8)-torq.data(:,7)) ./ sin((pos.data(:,3)-pos.data(:,1))/2);
    left_leg_force_measured = (spring_forces(:,4)-spring_forces(:,3)) ./ sin((pos.data(:,7)-pos.data(:,5))/2);
    left_leg_force_desired = (torq.data(:,11)-torq.data(:,10)) ./ sin((pos.data(:,7)-pos.data(:,5))/2);
plot_fscope('Leg Forces',{t,t}, {[right_leg_force_measured right_leg_force_desired], [left_leg_force_measured left_leg_force_desired]}, ...
    {{'Contact','Measured','Desired'},{'Contact','Measured','Desired'}},...
    {'Right Leg Force','Left Leg Force'}, {'Time (sec)','Time (sec)'}, {'Force (N)','Force (N)'}, {[-20 1400],[-20 1400]}, 2, contact_right_left);

% Plot controller data
% desired leg angles
raibert_angle = cont.data(:,10)*180/pi;
smm_angle = cont.data(:,11)*180/pi;
alpha_r = torso_pitch + right_leg_angle - 90;
alpha_l = torso_pitch + left_leg_angle - 90;
alpha_v = cont.data(:,21)*180/pi;
plot_fscope('Desired Leg Angle',{t,t}, {[raibert_angle right_leg_angle left_leg_angle], [smm_angle alpha_r alpha_l alpha_v]}, ...
    {{'Contact','Desired','Right','Left'},{'Contact','Desired','Right','Left','Virtual'}},...
    {'Raibert Hopping','SMM Alpha Target'}, {'Time (sec)','Time (sec)'}, {'Leg Angle (degrees)','Alpha (degrees)'}, {[120,280],[20,160]}, 2, contact_all);

% desired touchdown leg lengths
desired_leg_lengths = (d_y_com^2 + l0_virtual^2 - 2*d_y_com*l0_virtual*cosd(torso_pitch - smm_angle + 90)).^0.5;
plot_fscope('Desired Leg Length at Touchdown',{t}, {[desired_leg_lengths]},{{'Desired Leg Length'}},...
    {'Desired Leg Length at Touchdown'},{'Time (sec)'},{'Length (meters)'},{[0 1.3]},1,[]);

% translational velocities
dx_filtered = cont.data(:,4);
dy_filtered = cont.data(:,5);
dy_takeoff = cont.data(:,6);
dx_TO_est = cont.data(:,19);
dy_TO_est = cont.data(:,20);
plot_fscope('Filtered Translational Velocities',{t,t}, {[dx_filtered dx_TO_est], [dy_filtered dy_takeoff dy_TO_est]}, ...
    {{'Contact','dx_{boom}','dx_{atrias} TO'},{'Contact','dy_{boom}','dy_{boom} TO','dy_{atrias} TO'}},...
    {'dx','dy'}, {'Time (sec)','Time (sec)'}, {'Velocity (m/s)','Velocity (m/s)'}, {[-2,2],[-2,2]}, 2, contact_all);

% system energy
y_com = cont.data(:,9);
y_hip = cont.data(:,8);
y_TO_est = cont.data(:,18);
system_energy = m_total_real * ( 0.5*(dx_filtered.^2 + dy_filtered.^2) + g_reduced*y_com);
takeoff_system_energy = cont.data(:,7);
plot_fscope('System Energy',{t}, {[system_energy takeoff_system_energy]}, ...
    {{'Contact','System Energy','Energy at Takeoff'}},...
    {'Energy'}, {'Time (sec)'}, {'Energy (J)'}, {[0,500]}, 1, contact_all);

% virtual spring
plot_fscope('Virtual Spring Stiffness',{t}, {[cont.data(:,12)]}, ...
    {{'Contact','Spring Stiffness'}},...
    {'Spring Constant'}, {'Time (sec)'}, {'K (N/m)'}, {[13000,33000]}, 1, contact_all);

% enabled controllers
plot_fscope('Active Controllers',{t}, {[cont.data(:,16) cont.data(:,17)]}, ...
    {{'Contact','Hopping','SMM'}},...
    {'Active Controllers'}, {'Time (sec)'}, {'Enabled (1 or 0)'}, {[-0.5,1.5]}, 1, contact_all);

% vertical height
plot_fscope('Vertical Height',{t}, {[y_hip y_com]}, ...
    {{'Contact','Hip Height','COM Height'}},...
    {'Vertical Heights'}, {'Time (sec)'}, {'Height (meters)'}, {[0 1.6]}, 1, contact_all);

% GRFs from inverse dynamics
GRFx_desired = cont.data(:,23) .* contact;
GRFy_desired = cont.data(:,24) .* contact;
GRF_angle_desired = cont.data(:,25)*180/pi;
plot_fscope('Desired GRFs from Inverse Dynamics',{t,t}, {[GRFx_desired] [GRFy_desired]}, ...
    {{'Contact','Desired GRFx'},{'Contact','Desired GRFy'}},...
    {'Desired GRFx','Desired GRFy'}, {'Time (sec)','Time (sec)'}, {'Force (N)','Force (N)'}, {[-1000 1000],[0,4000]}, 2, contact_all);

% misc
figure('Name','Time to Apex');
plot(t,dy_takeoff/g_reduced,'g');

figure('Name','State Machine');
clf;
hold on;
plot(t,cont.data(:,1)); % flight
plot(t,cont.data(:,13),'r'); % thrust 
plot(t,cont.data(:,14),'g'); % posture
plot(t,cont.data(:,15),'m'); % placement
legend({'flight';'thrust';'posture';'placement'})


figure('Name','Desired Leg Length');
hold on;
%area(t,contact_all{1},'LineStyle','none','FaceColor',0.9*[1 1 1]);
%area(t,-contact_all{1},'LineStyle','none','FaceColor',0.9*[1 1 1],'HandleVisibility','off');
plot(t,cont.data(:,26),'r');
plot(t,cont.data(:,27),'g');
plot(t,cont.data(:,28),'b');


figure('Name','Desired Leg Angle');
hold on;
%area(t,contact_all{1},'LineStyle','none','FaceColor',0.9*[1 1 1]);
%area(t,-contact_all{1},'LineStyle','none','FaceColor',0.9*[1 1 1],'HandleVisibility','off');
plot(t,cont.data(:,29)*180/pi,'r');
plot(t,cont.data(:,30)*180/pi,'g');
plot(t,cont.data(:,31)*180/pi,'b');




%% save data
%hfigs = get(0, 'children');        %Get list of figures
%hgsave(hfigs,sprintf('figures/%s.fig',datestr(clock,'mmmm_dd_yyyy HH_MM_SS_AM')));


