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
h=f.fopen('E:\IMU_001.DAT');
imu_data=f.fread(h);
f.fclose(h);

% Unpack the data.
pos = SimulinkRealTime.utils.getFileScopeData(pos_data);
torq = SimulinkRealTime.utils.getFileScopeData(torq_data);
supr = SimulinkRealTime.utils.getFileScopeData(supr_data);
cont = SimulinkRealTime.utils.getFileScopeData(cont_data);
imu = SimulinkRealTime.utils.getFileScopeData(imu_data);
save(sprintf('data/%s',datestr(clock,'mmmm_dd_yyyy HH_MM_SS_AM')), 'pos','torq','supr','cont','imu');

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
right_leg_length_using_motors = cos((pos.data(:,4)-pos.data(:,2))/2);
left_leg_length_using_motors = cos((pos.data(:,8)-pos.data(:,6))/2);
plot_fscope('Virtual Leg Length',{t,t}, {[right_leg_length right_leg_length_using_motors], [left_leg_length left_leg_length_using_motors]},...
    {{'Measured','Using Motor Position'},{'Measured','Using Motor Position'}},...
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
torso_pitch = pos.data(:,13);
torso_pitch_velocity = pos.data(:,26);
plot_fscope('Torso Pitch',{t}, {[torso_pitch*180/pi, torso_pitch_velocity*180/pi]},{{'Pitch','Velocity'}},...
    {'Torso Pitch'},{'Time (sec)'},{'Angle (degrees)'},{[-30 30]},1,[]);
% Lateral Positions
boom_roll = pos.data(:,11);
plot_fscope('Lateral Position',{t}, {[pos.data(:,31:32)*180/pi, pos.data(:,9:10)*180/pi]},{{'Right Measured';'Left Measured'}},...
    {'Lateral Leg Angles'},{'Time (sec)'},{'Angle (degrees)'},{[-30 30]},1,[]);
right_lateral_global = (pos.data(:,31)-boom_roll+boom_mount_angle);
left_lateral_global = (pos.data(:,32)+boom_roll-boom_mount_angle);
plot_fscope('Lateral Global Orientation',{t}, {[right_lateral_global*180/pi, left_lateral_global*180/pi]},{{'Right Measured', 'Left Measured'}},...
    {'Lateral Leg Global Angles'},{'Time (sec)'},{'Angle (degrees)'},{[-30 30]},1,[]);

right_leg_width = sin((pos.data(:,3)-pos.data(:,1))/2);
left_leg_width = sin((pos.data(:,7)-pos.data(:,5))/2);



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
desired_forces = [torq.data(:,7:8).*repmat(right_left&contact,1,2) torq.data(:,10:11).*repmat(~right_left&contact,1,2)];
plot_fscope('Leg Torques',{t,t}, {[desired_forces(:,1:2) spring_forces(:,1:2)],[desired_forces(:,3:4) spring_forces(:,3:4)]}, ...
    {{'Contact','Back Desired','Front Desired','Back Measured','Front Measured'},{'Contact','Back Desired','Front Desired','Back Measured','Front Measured'}},...
    {'Right Leg Torques','Left Leg Torques'}, {'Time (sec)','Time (sec)'}, {'Torque (Nm)','Torque (Nm)'}, {[-400 400],[-400 400]}, 2, contact_right_left);
% commanded motor torques
commanded_forces = [torq.data(:,1:2) torq.data(:,4:5)];
plot_fscope('Motor Torques',{t,t}, {torq.data(:,1:2),torq.data(:,4:5)}, ...
    {{'Back Commanded','Front Commanded'},{'Back Commanded','Front Commanded'}},...
    {'Right Leg Torques','Left Leg Torques'}, {'Time (sec)','Time (sec)'}, {'Torque (Nm)','Torque (Nm)'}, {[-400 400],[-400 400]}, 2, []);
% commanded lateral motor torques
lateral_torque_commands = [torq.data(:,3) torq.data(:,6)];
plot_fscope('Lateral Torques',{t}, {lateral_torque_commands}, ...
    {{'Right Commanded','Left Commanded'}},...
    {'Lateral Torques'}, {'Time (sec)'}, {'Torque (Nm)'}, {[-400 400]}, 1, []);
% leg force
    right_leg_force_measured = (spring_forces(:,2)-spring_forces(:,1)) ./ sin((pos.data(:,3)-pos.data(:,1))/2);
    right_leg_force_desired = (torq.data(:,8)-torq.data(:,7)) ./ sin((pos.data(:,3)-pos.data(:,1))/2);
    left_leg_force_measured = (spring_forces(:,4)-spring_forces(:,3)) ./ sin((pos.data(:,7)-pos.data(:,5))/2);
    left_leg_force_desired = (torq.data(:,11)-torq.data(:,10)) ./ sin((pos.data(:,7)-pos.data(:,5))/2);
plot_fscope('Leg Forces',{t,t}, {[right_leg_force_measured right_leg_force_desired.*contact], [left_leg_force_measured left_leg_force_desired.*contact]}, ...
    {{'Contact','Measured','Desired'},{'Contact','Measured','Desired'}},...
    {'Right Leg Force','Left Leg Force'}, {'Time (sec)','Time (sec)'}, {'Force (N)','Force (N)'}, {[-20 1400],[-20 1400]}, 2, contact_right_left);
% leg torque
    right_leg_torque_measured = (spring_forces(:,2)+spring_forces(:,1));
    left_leg_torque_measured = (spring_forces(:,4)+spring_forces(:,3));
plot_fscope('Leg Torques',{t,t}, {[right_leg_torque_measured], [left_leg_torque_measured]}, ...
    {{'Contact','Measured'},{'Contact','Measured'}},...
    {'Right Leg Force','Left Leg Force'}, {'Time (sec)','Time (sec)'}, {'Torque (Nm)','Torque (Nm)'}, {'auto','auto'}, 2, contact_right_left);
    
    
% vertical leg force
%right_leg_force_vertical = right_leg_force_measured*cos(roll)*-cos(gamma)

    
% Plot controller data
% Primary Leg Data
primary_leg_force = (right_leg_force_measured.*right_left+left_leg_force_measured.*~right_left);
primary_leg_torque = (right_leg_torque_measured.*right_left+left_leg_torque_measured.*~right_left);
primary_leg_length = (right_leg_length.*right_left+left_leg_length.*~right_left);
primary_leg_angle = (right_leg_angle.*right_left+left_leg_angle.*~right_left)*pi/180;
primary_leg_global_angle = primary_leg_angle + torso_pitch;
% Ideally Filtered Derivative
scope_sample_time = 0.004;
low_pass_cutoff = 10;
d_primary_leg_length = [0; diff(primary_leg_length)]./scope_sample_time;
d_primary_leg_global_angle = [0; diff(primary_leg_global_angle)]./scope_sample_time;
d_torso_pitch = [0; diff(torso_pitch)]./scope_sample_time; 
d_primary_leg_length = idealfilter(timeseries(d_primary_leg_length , t),[0 low_pass_cutoff], 'pass');
d_primary_leg_global_angle = idealfilter(timeseries(d_primary_leg_global_angle , t),[0 low_pass_cutoff], 'pass');
d_torso_pitch = idealfilter(timeseries(d_torso_pitch , t),[0 low_pass_cutoff], 'pass');
d_primary_leg_length = d_primary_leg_length.Data;
d_primary_leg_global_angle = d_primary_leg_global_angle.Data;
d_torso_pitch = d_torso_pitch.Data;
dd_primary_leg_length = [diff(d_primary_leg_length); 0]./scope_sample_time;
dd_primary_leg_global_angle = [diff(d_primary_leg_global_angle); 0]./scope_sample_time;
dd_torso_pitch = [diff(d_torso_pitch); 0]./scope_sample_time;
dd_primary_leg_length = idealfilter(timeseries(dd_primary_leg_length , t),[0 low_pass_cutoff], 'pass');
dd_primary_leg_global_angle = idealfilter(timeseries(dd_primary_leg_global_angle , t),[0 low_pass_cutoff], 'pass');
dd_torso_pitch = idealfilter(timeseries(dd_torso_pitch , t),[0 low_pass_cutoff], 'pass');
dd_primary_leg_length = dd_primary_leg_length.Data;
dd_primary_leg_global_angle = dd_primary_leg_global_angle.Data;
dd_torso_pitch = dd_torso_pitch.Data;


% desired leg angles
raibert_angle = cont.data(:,10)*180/pi;
smm_angle = cont.data(:,11)*180/pi;
alpha_r = torso_pitch + right_leg_angle - 90;
alpha_l = torso_pitch + left_leg_angle - 90;
alpha_v = cont.data(:,21)*180/pi;
plot_fscope('Desired Leg Angle',{t,t}, {[raibert_angle right_leg_angle left_leg_angle], [smm_angle alpha_r alpha_l alpha_v]}, ...
    {{'Contact','Desired','Right','Left'},{'Contact','Desired','Right','Left','Virtual'}},...
    {'Raibert Hopping','SMM Alpha Target'}, {'Time (sec)','Time (sec)'}, {'Leg Angle (degrees)','Alpha (degrees)'}, {[120,280],[20,160]}, 2, contact_all);

% % desired touchdown leg lengths
% desired_leg_lengths = (d_y_com^2 + l0_virtual^2 - 2*d_y_com*l0_virtual*cosd(torso_pitch - smm_angle + 90)).^0.5;
% plot_fscope('Desired Leg Length at Touchdown',{t}, {[desired_leg_lengths]},{{'Desired Leg Length'}},...
%     {'Desired Leg Length at Touchdown'},{'Time (sec)'},{'Length (meters)'},{[0 1.3]},1,[]);

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
virtual_spring_deflection_measured = cont.data(:,38);
k_virtual_raibert_measured = cont.data(:,39);
virtual_spring_length = sqrt(d_y_com^2 + primary_leg_length.^2 - 2.*d_y_com.*primary_leg_length.*cos(primary_leg_angle));
y_com = cont.data(:,9);
y_hip = cont.data(:,8);
y_TO_est = cont.data(:,18);
system_energy = m_total_real * ( 0.5*(dx_filtered.^2 + dy_filtered.^2) + g*y_com) + 0.5*k0_virtual.*(virtual_spring_deflection_measured).^2;
takeoff_system_energy = cont.data(:,7);
plot_fscope('System Energy',{t}, {[system_energy takeoff_system_energy]}, ...
    {{'Contact','System Energy','Energy at Takeoff'}},...
    {'Energy'}, {'Time (sec)'}, {'Energy (J)'}, {'auto'}, 1, contact_all);

% % virtual spring
% plot_fscope('Virtual Spring Stiffness',{t}, {[cont.data(:,12)]}, ...
%     {{'Contact','Spring Stiffness'}},...
%     {'Spring Constant'}, {'Time (sec)'}, {'K (N/m)'}, {[13000,33000]}, 1, contact_all);
% 



% enabled controllers
plot_fscope('Active Controllers',{t}, {[cont.data(:,16) cont.data(:,17)]}, ...
    {{'Contact','Hopping','SMM'}},...
    {'Active Controllers'}, {'Time (sec)'}, {'Enabled (1 or 0)'}, {[-0.5,1.5]}, 1, contact_all);

% vertical height
plot_fscope('Vertical Height',{t}, {[y_hip y_com]}, ...
    {{'Contact','Hip Height','COM Height'}},...
    {'Vertical Heights'}, {'Time (sec)'}, {'Height (meters)'}, {[0 1.6]}, 1, contact_all);

% % GRFs from inverse dynamics
% GRFx_desired = cont.data(:,23) .* contact;
% GRFy_desired = cont.data(:,24) .* contact;
% GRF_angle_desired = cont.data(:,25)*180/pi;
% plot_fscope('Desired GRFs from Inverse Dynamics',{t,t}, {[GRFx_desired] [GRFy_desired]}, ...
%     {{'Contact','Desired GRFx'},{'Contact','Desired GRFy'}},...
%     {'Desired GRFx','Desired GRFy'}, {'Time (sec)','Time (sec)'}, {'Force (N)','Force (N)'}, {[-1000 1000],[0,4000]}, 2, contact_all);


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


% figure('Name','Desired Leg Length');
% hold on;
% %area(t,contact_all{1},'LineStyle','none','FaceColor',0.9*[1 1 1]);
% %area(t,-contact_all{1},'LineStyle','none','FaceColor',0.9*[1 1 1],'HandleVisibility','off');
% plot(t,cont.data(:,26),'r');
% plot(t,cont.data(:,27),'g');
% plot(t,cont.data(:,28),'b');
% 
% 
% figure('Name','Desired Leg Angle');
% hold on;
% %area(t,contact_all{1},'LineStyle','none','FaceColor',0.9*[1 1 1]);
% %area(t,-contact_all{1},'LineStyle','none','FaceColor',0.9*[1 1 1],'HandleVisibility','off');
% plot(t,cont.data(:,29)*180/pi,'r');
% plot(t,cont.data(:,30)*180/pi,'g');
% plot(t,cont.data(:,31)*180/pi,'b');


figure('Name','Leg Extension'); hold on; subplot(311); plot(t,cont.data(:,35));subplot(312); plot(t,cont.data(:,36));subplot(313); plot(t,cont.data(:,37));

% virtual raibert spring
figure('Name','Spring Compression and constant');
subplot(211); hold on; 
area(t,contact,'LineStyle','none','FaceColor',0.9*[1 1 1]);
area(t,-contact,'LineStyle','none','FaceColor',0.9*[1 1 1],'HandleVisibility','off');
plot(t,virtual_spring_deflection_measured);
subplot(212);  hold on;
area(t,contact*700,'LineStyle','none','FaceColor',0.9*[1 1 1]);
area(t,-contact*700,'LineStyle','none','FaceColor',0.9*[1 1 1],'HandleVisibility','off');
virtual_spring_force = k_virtual_raibert_measured.*virtual_spring_deflection_measured;
plot(t,k_virtual_raibert_measured);

% force-length curve
%figure('Name','Force-Length Raibert');
%plot3(t,virtual_spring_length, virtual_spring_force_raibert);

%% Compare GRFs

 
% GRF commands for inverse dynamics
GRFx_desired = cont.data(:,32) .* contact;
GRFy_desired = cont.data(:,33) .* contact;
GRF_angle_desired = cont.data(:,34)*180/pi;

% GRF estimation from Jacobian transpose
robot_mass = 64;
GRFx_measured = -robot_mass.*(d_y_com.*sin(torso_pitch).*d_torso_pitch.^2 - primary_leg_length.*sin(primary_leg_global_angle).*d_primary_leg_global_angle.^2 + 2.*d_primary_leg_length.*cos(primary_leg_global_angle).*d_primary_leg_global_angle + dd_primary_leg_length.*sin(primary_leg_global_angle) - d_y_com.*dd_torso_pitch.*cos(torso_pitch) + dd_primary_leg_global_angle.*primary_leg_length.*cos(primary_leg_global_angle));
GRFy_measured = robot_mass*g + -m_total_real.*(d_y_com.*cos(torso_pitch).*d_torso_pitch.^2 - primary_leg_length.*cos(primary_leg_global_angle).*d_primary_leg_global_angle.^2 - 2.*d_primary_leg_length.*sin(primary_leg_global_angle).*d_primary_leg_global_angle + dd_primary_leg_length.*cos(primary_leg_global_angle) + d_y_com.*dd_torso_pitch.*sin(torso_pitch) - dd_primary_leg_global_angle.*primary_leg_length.*sin(primary_leg_global_angle));

plot_fscope('Desired GRFs from Inverse Dynamics',{t,t}, {[GRFx_measured.*contact GRFx_desired] [GRFy_measured.*contact GRFy_desired]}, ...
    {{'Contact','Jacobian GRFx','Desired GRFx'},{'Contact','Jacobian GRFy','Desired GRFy'}},...
    {'Desired GRFx','Desired GRFy'}, {'Time (sec)','Time (sec)'}, {'Force (N)','Force (N)'}, {[-500 500],[0,3000]}, 2, contact_all);

% Include boom and force plate
low_pass_cutoff = 7;
y_com = cont.data(:,9);
x_com = cont.data(:,40);
dy_com = [diff(y_com); 0]/scope_sample_time;
dy_com = idealfilter(timeseries(dy_com , t),[0 low_pass_cutoff], 'pass');
dy_com = dy_com.Data;
ddy_com = [0; diff(dy_com)]/scope_sample_time;
ddy_com = idealfilter(timeseries(ddy_com , t),[0 low_pass_cutoff], 'pass');
ddy_com = ddy_com.Data;
GRFy_measured_boom = robot_mass*(ddy_com + g);

F_force_plate = plot_force_plate_data('April_12_2015 11_14_12_PM.txt');
t_shift = 18.41;
t_compare = t_shift:1/200:(t_shift+(size(F_force_plate,1)-1)/200); 
force_plate_compare = F_force_plate(:,3);

figure('Name','GRF comparison');
hold on;
plot(t, GRFy_measured_boom.*contact);
%plot(t, GRFy_measured.*contact);
plot(t, GRFy_desired.*contact);
%plot(t_compare, force_plate_compare);




%% save data
%hfigs = get(0, 'children');        %Get list of figures
%hgsave(hfigs,sprintf('figures/%s.fig',datestr(clock,'mmmm_dd_yyyy HH_MM_SS_AM')));


