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
% save data
save(sprintf('data/%s',datestr(clock,'mmmm_dd_yyyy HH_MM_SS_AM')), 'pos', 'torq', 'cont','supr');

%% Plot
clf;
close all;
t = pos.data(:,end);
right_left = pos.data(:,1);
contact = 0*right_left;

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
    {'Velocity (degrees / sec)','Velocity (degrees / sec)'},{[-150, 150],[-150, 150]},2,[]);
% Virtual Leg Length
right_leg_length = cos((pos.data(:,3)-pos.data(:,1))/2);
right_leg_length_velocity = -l_seg*sin((pos.data(:,3)-pos.data(:,1))/2).*(pos.data(:,16)-pos.data(:,14));
left_leg_length = cos((pos.data(:,7)-pos.data(:,5))/2);
plot_fscope('Virtual Leg Length',{t,t}, {right_leg_length, left_leg_length},...
    {{'Measured'},{'Measured'}},...
    {'Right Leg Length','Left Leg Length'},{'Time (sec)','Time (sec)'},...
    {'Length (m)','Length (m)'},{[0, 1],[0, 1]},2,[]);
% Virtual Leg Angle
right_leg_angle = (pos.data(:,3)+pos.data(:,1))/2*180/pi;
right_leg_angle_velocity = (pos.data(:,16)+pos.data(:,14))/2*180/pi;
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

%% Plot torque data
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

%% Plot controller data
% desired trajectory
desired_leg_length_position = cont.data(:,2);
desired_leg_length_velocity = cont.data(:,3);
desired_leg_angle_position = cont.data(:,4)*180/pi;
desired_leg_angle_velocity = cont.data(:,5)*180/pi;

plot_fscope('Leg Length Trajectory',{t,t}, {[desired_leg_length_position right_leg_length], [desired_leg_length_velocity right_leg_length_velocity]}, ...
    {{'Desired','Measured'},{'Desired','Measured'}},...
    {'Leg Length Position','Leg Length Velocity'}, {'Time (sec)','Time (sec)'}, {'Length (m)','Velocity (m/s)'}, {[0,1],[-5,5]}, 2);

plot_fscope('Leg Angle Trajectory',{t,t}, {[desired_leg_angle_position right_leg_angle], [desired_leg_angle_velocity right_leg_angle_velocity]}, ...
    {{'Desired','Measured'},{'Desired','Measured'}},...
    {'Leg Angle Position','Leg Angle Velocity'}, {'Time (sec)','Time (sec)'}, {'Angular Position(degrees)','Angular Velocity (degrees/s)'}, {[120,280],[-600,600]}, 2);

desired_alpha_target = cont.data(:,6)*180/pi;
measured_alpha_target = cont.data(:,7)*180/pi;
trajectory_enabled = {100000*cont.data(:,8)};

plot_fscope('Alpha Trajectory',{t}, {[desired_alpha_target measured_alpha_target]}, ...
    {{'Enabled','Desired','Measured'}},...
    {'Trajectory Enabled', 'Alpha Position'}, {'Time (sec)'}, {'Angular Position(degrees)'}, {[0,180]}, 1, trajectory_enabled);


% primary = right leg
desired_primary_back = cont.data(:,11)*180/pi;
desired_primary_dback = cont.data(:,12)*180/pi;
desired_primary_front = cont.data(:,9)*180/pi;
desired_primary_dfront = cont.data(:,10)*180/pi;
measured_primary_back = pos.data(:,4)*180/pi;
measured_primary_dback = pos.data(:,17)*180/pi;
measured_primary_front = pos.data(:,2)*180/pi;
measured_primary_dfront = pos.data(:,15)*180/pi;

plot_fscope('Primary Motor Positions',{t,t},{[desired_primary_back measured_primary_back],[desired_primary_front measured_primary_front]},...
    {{'Desired','Measured'},{'Desired','Measured'}},...
    {'Back Motor Position','Front Motor Position'}, {'Time (sec)','Time (sec)'}, {'Degrees','Degrees'},{'auto','auto'}, 2);

plot_fscope('Primary Motor Velocities',{t,t},{[desired_primary_dback measured_primary_dback],[desired_primary_dfront measured_primary_dfront]},...
    {{'Desired','Measured'},{'Desired','Measured'}},...
    {'Back Motor Velocity','Front Motor Velocity'}, {'Time (sec)','Time (sec)'}, {'Degrees/s','Degrees/s'},{'auto','auto'}, 2);


% secondary = left leg
desired_secondary_back = cont.data(:,13)*180/pi;
desired_secondary_dback = cont.data(:,14)*180/pi;
desired_secondary_front = cont.data(:,15)*180/pi;
desired_secondary_dfront = cont.data(:,16)*180/pi;
measured_secondary_back = pos.data(:,8)*180/pi;
measured_secondary_dback = pos.data(:,21)*180/pi;
measured_secondary_front = pos.data(:,6)*180/pi;
measured_secondary_dfront = pos.data(:,19)*180/pi;

plot_fscope('Secondary Motor Positions',{t,t},{[desired_secondary_back measured_secondary_back],[desired_secondary_front measured_secondary_front]},...
    {{'Desired','Measured'},{'Desired','Measured'}},...
    {'Back Motor Position','Front Motor Position'}, {'Time (sec)','Time (sec)'}, {'Degrees','Degrees'},{'auto','auto'}, 2);

plot_fscope('Secondary Motor Velocities',{t,t},{[desired_secondary_dback measured_secondary_dback],[desired_secondary_dfront measured_secondary_dfront]},...
    {{'Desired','Measured'},{'Desired','Measured'}},...
    {'Back Motor Velocity','Front Motor Velocity'}, {'Time (sec)','Time (sec)'}, {'Degrees/s','Degrees/s'},{'auto','auto'}, 2);

% save figures
%hfigs = get(0, 'children');        %Get list of figures
%hgsave(hfigs,sprintf('figures/%s.fig',datestr(clock,'mmmm_dd_yyyy HH_MM_SS_AM')));

