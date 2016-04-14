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

%% Plot
% Pick subset of data
t = pos.data(:,end);
t_start = 5;
t_end = t(end);
position = pos.data(t>=t_start & t<=t_end,:);
torque = torq.data(t>=t_start & t<=t_end,:);
controller = cont.data(t>=t_start & t<=t_end,:);
imu_signals = imu.data(t>=t_start & t<=t_end,:);

close all;
t = position(:,end);
contact = ~controller(:,5);
right_left = controller(:,6);

% Plot position data
% 1-13: encoder positions
% 14-26: encoder velocities

% Leg Segment Positions
plot_fscope('Leg Position',{t,t}, {position(:,1:4)*180/pi, position(:,5:8)*180/pi},...
    {{'qFront';'qFrontGear';'qBack';'qBackGear'},{'qFront';'qFrontGear';'qBack';'qBackGear'}},...
    {'Right Leg Position','Left Leg Position'},{'Time (sec)','Time (sec)'},{'Angle (degrees)','Angle (degrees)'},{[0 350],[0 350]});
incremental_gear_positions = position(:,27:30); % rFront rBack lFront lBack 

% Leg Segment Velocities
plot_fscope('Leg Velocity',{t,t}, {position(:,14:17)*180/pi, position(:,18:21)*180/pi},...
    {{'dqFront';'dqFrontGear';'dqBack';'dqBackGear'},{'dqFront';'dqFrontGear';'dqBack';'dqBackGear'}},...
    {'Right Leg Velocity','Left Leg Velocity'},{'Time (sec)','Time (sec)'},...
    {'Velocity (degrees / sec)','Velocity (degrees / sec)'},{[-100, 100],[-100, 100]},2,[]);
% Virtual Leg Length
right_leg_length = cos((position(:,3)-position(:,1))/2);
left_leg_length = cos((position(:,7)-position(:,5))/2);
right_leg_length_using_motors = cos((position(:,4)-position(:,2))/2);
left_leg_length_using_motors = cos((position(:,8)-position(:,6))/2);
right_leg_width = sin((position(:,3)-position(:,1))/2);
left_leg_width = sin((position(:,7)-position(:,5))/2);
plot_fscope('Virtual Leg Length',{t,t}, {[right_leg_length right_leg_length_using_motors], [left_leg_length left_leg_length_using_motors]},...
    {{'Measured','Using Motor Position'},{'Measured','Using Motor Position'}},...
    {'Right Leg Length','Left Leg Length'},{'Time (sec)','Time (sec)'},...
    {'Length (m)','Length (m)'},{[0, 1],[0, 1]},2,[]);
% Virtual Leg Angle
right_leg_angle = (position(:,3)+position(:,1))/2;
left_leg_angle = (position(:,7)+position(:,5))/2;
right_leg_angle_velocity = (position(:,16)+position(:,4))/2;
left_leg_angle_velocity = (position(:,20)+position(:,18))/2;
plot_fscope('Virtual Leg Angle',{t,t}, {right_leg_angle*180/pi, left_leg_angle*180/pi},...
    {{'Measured'},{'Measured'}},...
    {'Right Leg Angle','Left Leg Angle'},{'Time (sec)','Time (sec)'},...
    {'Angle (degrees)','Angle (degrees)'},{[90, 270],[90, 270]},2,[]);
% Toros pitch
torso_pitch = position(:,13);
torso_pitch_velocity = position(:,26);
plot_fscope('Torso Pitch',{t}, {[torso_pitch*180/pi, torso_pitch_velocity*180/pi]},{{'Pitch','Velocity'}},...
    {'Torso Pitch'},{'Time (sec)'},{'Angle (degrees)'},{[-30 30]},1,[]);
% Lateral Positions
boom_roll = position(:,11);
plot_fscope('Lateral Position',{t}, {[position(:,31:32)*180/pi, position(:,9:10)*180/pi]},{{'Right Measured';'Left Measured'}},...
    {'Lateral Leg Angles'},{'Time (sec)'},{'Angle (degrees)'},{[-30 30]},1,[]);
right_lateral_global = (position(:,31)-boom_roll+boom_mount_angle);
left_lateral_global = (position(:,32)+boom_roll-boom_mount_angle);
plot_fscope('Lateral Global Orientation',{t}, {[right_lateral_global*180/pi, left_lateral_global*180/pi]},{{'Right Measured', 'Left Measured'}},...
    {'Lateral Leg Global Angles'},{'Time (sec)'},{'Angle (degrees)'},{[-30 30]},1,[]);
% Raw encoder data
if size(position,2) > 39
    raw_encoder_signals = position(:,39:46);
    raw_binary_values = dec2bin(raw_encoder_signals);
    plot_fscope('Raw Encoder Signals',{t}, {[raw_encoder_signals]},{{'1','2','3','4','5','6','7','8'}},...
        {'Renishaw Optical Encoders'},{'Time (sec)'},{'Ticks'},{['auto']},1,[]);
end


% Plot IMU data
% 1-3: IMU gyros
% 4-6: IMU accelerometers
imu_gyros = imu_signals(:, 1:3);
imu_accelerometers = imu_signals(:, 4:6);
plot_fscope('IMU Raw Data',{t,t}, {imu_gyros.*180/pi, imu_accelerometers},...
    {{'X','Y','Z'},{'X','Y','Z'}},...
    {'Gyros','Accelerometers'},{'Time (sec)','Time (sec)'},...
    {'Radians','m/s^2'},{'auto','auto'});


% Plot torque data
% 1-6: commanded motor torques
% 7-12: desired output torques

% contacts
contact_right_left = {100000*(right_left&contact), 100000*(~right_left&contact)};
contact_all = {100000*contact, 100000*contact};
% spring deflections
deflections = [position(:,4)-position(:,3) position(:,2)-position(:,1) position(:,8)-position(:,7) position(:,6)-position(:,5)];
% torques desired vs measured
spring_forces = bsxfun(@times, deflections, k_sea);
desired_forces = [torque(:,7:8).*repmat(right_left&contact,1,2) torque(:,10:11).*repmat(~right_left&contact,1,2)];
plot_fscope('Leg Torques',{t,t}, {[desired_forces(:,1:2) spring_forces(:,1:2)],[desired_forces(:,3:4) spring_forces(:,3:4)]}, ...
    {{'Contact','Back Desired','Front Desired','Back Measured','Front Measured'},{'Contact','Back Desired','Front Desired','Back Measured','Front Measured'}},...
    {'Right Leg Torques','Left Leg Torques'}, {'Time (sec)','Time (sec)'}, {'Torque (Nm)','Torque (Nm)'}, {[-600 600],[-600 600]}, 2, contact_right_left);
% commanded motor torques
commanded_forces = [torque(:,1:2) torque(:,4:5)];
plot_fscope('Motor Torques',{t,t}, {torque(:,1:2),torque(:,4:5)}, ...
    {{'Back Commanded','Front Commanded'},{'Back Commanded','Front Commanded'}},...
    {'Right Leg Torques','Left Leg Torques'}, {'Time (sec)','Time (sec)'}, {'Torque (Nm)','Torque (Nm)'}, {[-900 900],[-900 900]}, 2, []);
% commanded lateral motor torques
lateral_torque_commands = [torque(:,3) torque(:,6)];
plot_fscope('Lateral Torques',{t}, {lateral_torque_commands}, ...
    {{'Right Commanded','Left Commanded'}},...
    {'Lateral Torques'}, {'Time (sec)'}, {'Torque (Nm)'}, {[-700 250]}, 1, []);
% leg force
    right_leg_force_measured = (spring_forces(:,2)-spring_forces(:,1)) ./ sin((position(:,3)-position(:,1))/2);
    right_leg_force_desired = (torque(:,8)-torque(:,7)) ./ sin((position(:,3)-position(:,1))/2);
    left_leg_force_measured = (spring_forces(:,4)-spring_forces(:,3)) ./ sin((position(:,7)-position(:,5))/2);
    left_leg_force_desired = (torque(:,11)-torque(:,10)) ./ sin((position(:,7)-position(:,5))/2);
plot_fscope('Leg Forces',{t,t}, {[right_leg_force_measured right_leg_force_desired.*contact], [left_leg_force_measured left_leg_force_desired.*contact]}, ...
    {{'Contact','Measured','Desired'},{'Contact','Measured','Desired'}},...
    {'Right Leg Force','Left Leg Force'}, {'Time (sec)','Time (sec)'}, {'Force (N)','Force (N)'}, {[-20 1800],[-20 1800]}, 2, contact_right_left);
% leg torque
    right_leg_torque_measured = (spring_forces(:,2)+spring_forces(:,1));
    left_leg_torque_measured = (spring_forces(:,4)+spring_forces(:,3));
plot_fscope('Leg Torques',{t,t}, {[right_leg_torque_measured], [left_leg_torque_measured]}, ...
    {{'Contact','Measured'},{'Contact','Measured'}},...
    {'Right Leg Torque','Left Leg Torque'}, {'Time (sec)','Time (sec)'}, {'Torque (Nm)','Torque (Nm)'}, {[-700,700],[-700,700]}, 2, contact_right_left);
    
    
% Plot controller data
% Primary Leg Data
primary_leg_force = (right_leg_force_measured.*right_left+left_leg_force_measured.*~right_left);
primary_leg_torque = (right_leg_torque_measured.*right_left+left_leg_torque_measured.*~right_left);
primary_leg_length = (right_leg_length.*right_left+left_leg_length.*~right_left);
primary_leg_angle = (right_leg_angle.*right_left+left_leg_angle.*~right_left);
primary_leg_angle_velocity = (right_leg_angle_velocity.*right_left+left_leg_angle_velocity.*~right_left);
primary_leg_global_angle = primary_leg_angle + torso_pitch;
primary_back_motor_positions = (position(:,4).*right_left + position(:,8).*~right_left);
primary_front_motor_positions = (position(:,2).*right_left + position(:,6).*~right_left);
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

% State Machine
state_machine = controller(:,1:5);
estimated_vertical_grf_for_state_machine = controller(:,7);
% Estimated GRFs
right_estimated_grf = controller(:,42:43);
left_estimated_grf = controller(:,44:45);
% COM position and velocity using boom
x_com = controller(:,8);
dx_com = controller(:,9);
y_com = controller(:,10);
dy_com = controller(:,11);
% COM position and velocity using robot geometery
x_com_robot = controller(:,32);
dx_com_robot = controller(:,33);
y_com_robot = controller(:,34);
dy_com_robot = controller(:,35);
% COM state from kalman filter
dx_com_kalman = controller(:,36);
y_com_kalman = controller(:,37);
dy_com_kalman = controller(:,38);
dx_kalman_uncertainty = controller(:,45);
y_kalman_uncertainty = controller(:,46);
dy_kalman_uncertainty = controller(:,47);
% Active controller
hopping_active = controller(:,12);
deadbeat_active = controller(:,13);
% Stance
virtual_spring_stiffness = controller(:,14);
virtual_spring_rest_length = controller(:,15);
inverse_dynamics_GRFx_target = controller(:,17);
inverse_dynamics_GRFy_target = controller(:,18);
inverse_dynamics_GRF_angle_target = controller(:,19);
% Flight
fourbar_back_desired_position = controller(:,19);
fourbar_front_desired_position = controller(:,20);
fourbar_back_desired_velocity = controller(:,21);
fourbar_front_desired_velocity = controller(:,22);
fourbar_back_desired_acceleration = controller(:,23);
fourbar_front_desired_acceleration = controller(:,24);
% Raibert
desired_raibert_leg_angle_position = controller(:,25);
desired_raibert_leg_angle_velocity = controller(:,26);
desired_raibert_horizontal_direction = controller(:,27);
desired_raibert_forward_velocity  = controller(:,28);
desired_flight_primary_leg_length_position = controller(:,29);
desired_flight_primary_leg_length_velocity = controller(:,30);
desired_flight_primary_leg_length_acceleration = controller(:,31);
% Virtual spring length
virtual_spring_length = controller(:,39);
virtual_spring_velocity = controller(:,40);
% Target energy
desired_system_energy_signal = controller(:,48);
% Kalman filter on gear position
kalman_gear_position_uncertainty = controller(:,57:64);
kalman_gear_position = controller(:,49:52);
kalman_gear_velocity = controller(:,53:56);

% Plot state machine
plot_fscope('State Machine',{t}, {[state_machine, right_left]}, ...
    {{'Touch Down','Locked Contact','Unloading','Takeoff','Flight','Right/Left'}},...
    {'State Machine'}, {'Time (sec)'}, {'Active (true/false)'}, {'auto'});
plot_fscope('GRF estimates',{t,t,t}, {[estimated_vertical_grf_for_state_machine, right_left], right_estimated_grf, left_estimated_grf}, ...
    {{'Vertical GRF','Right/Left'},{'Horizontal GRF','Vertical GRF'},{'Horizontal GRF','Vertical GRF'}},...
    {'Primary GRF','Right Leg GRF','Left Leg GRF'}, {'Time (sec)','Time (sec)','Time (sec)'}, {'N / Body Weight','N','N'}, {'auto','auto','auto'});
% Plot COM position/velocity
plot_fscope('Center of Mass',{t,t}, {[y_com, y_com_robot, y_com_kalman], [dy_com, dy_com_robot, dy_com_kalman]}, ...
    {{'z_{true}','z_{measured}','z_{kalman}'},{'dz_{true}','dz_{measured}','dz_{kalman}'}},...
    {'COM Z Position','COM Z Velocity'}, {'Time (sec)','Time (sec)'}, {'m','m/s'}, {'auto','auto'});
plot_fscope('Center of Mass',{t,t}, {[x_com, x_com_robot], [dx_com, dx_com_robot, dx_com_kalman]}, ...
    {{'x_{boom}','x_{robot}'},{'dx_{true}','dx_{measured}','dx_{kalman}'}},...
    {'COM X Position','COM X Velocity'}, {'Time (sec)','Time (sec)'}, {'m','m/s'}, {'auto','auto'});
plot_fscope('Kalman Filter Uncertainty',{t,t}, {[dx_kalman_uncertainty], [dy_kalman_uncertainty]}, ...
    {{''},{''}},...
    {'X Uncertainty','Z Uncertainty'}, {'Time (sec)','Time (sec)'}, {'',''}, {'auto','auto'});
% Plot active controller
plot_fscope('Active controller',{t}, {[hopping_active, deadbeat_active]}, ...
    {{'Hopping','Deadbeat'}},...
    {'Active controller'}, {'Time (sec)'}, {'Active (true/false)'}, {'auto'});
% Plot virtual spring state
plot_fscope('Virtual Spring',{t,t}, {[virtual_spring_stiffness], [virtual_spring_length, virtual_spring_rest_length]}, ...
    {{'Stiffness'},{'Measured Length','Rest Length'}},...
    {'Virtual Stiffness','Virtual Length'}, {'Time (sec)','Time (sec)'}, {'N/m','m'}, {'auto','auto'});
% Plot inverse dynamics
%%%%% ADD IN MEASUREMENTS
GRFx_measured = -(right_estimated_grf(:,1) + left_estimated_grf(:,1)).*contact;
GRFy_measured = (right_estimated_grf(:,2) + left_estimated_grf(:,2)).*contact;
plot_fscope('Inverse Dynamics',{t,t,t}, {[inverse_dynamics_GRFx_target.*contact, GRFx_measured], [inverse_dynamics_GRFy_target.*contact, GRFy_measured], [inverse_dynamics_GRF_angle_target.*180/pi].*contact}, ...
    {{'GRFx Target'},{'GRFy Target'},{'GRF Angle Target'}},...
    {'Ground Reaction Force X','Ground Reaction Force Y','Ground Reaction Force Angle'}, ...
    {'Time (sec)','Time (sec)','Time (sec)'}, {'N','N','Degrees'}, {'auto','auto','auto'});




% Plot force plate data if available
% F_force_plate = plot_force_plate_data('April_20_2015  2_00_48_PM.txt',false);
% t_shift = 16.445;
% t_compare = t_shift:1/200:(t_shift+(size(F_force_plate,1)-1)/200);
% subplot(312);
% hold on;
% plot(t_compare,F_force_plate(:,3));
% subplot(311);
% hold on;
% plot(t_compare,-F_force_plate(:,1));


% Plot primary leg four bar tracking during flight
%%%%% ADD IN MEASUREMENTS
plot_fscope('Primary Flight Fourbar Tracking',{t,t,t}, ...
    {[fourbar_back_desired_position, primary_back_motor_positions, fourbar_front_desired_position, primary_front_motor_positions].*180/pi, [fourbar_back_desired_velocity, fourbar_front_desired_velocity].*180/pi, [fourbar_back_desired_acceleration, fourbar_front_desired_acceleration].*180/pi}, ...
    {{'Back Commanded', 'Back Measured', 'Front Commanded','Front Measured'},{'dBack Commanded', 'dFront Commanded'},{'ddBack Commanded', 'ddFront Commanded'}},...
    {'Position','Velocity','Acceleration'}, ...
    {'Time (sec)','Time (sec)','Time (sec)'}, {'Degrees','Degrees/s','Degrees/s'}, {'auto','auto','auto'});
% Plot system energy
% virtual_spring_deflection_measured = controller(:,38);
% virtual_spring_length = sqrt(d_y_com^2 + primary_leg_length.^2 - 2.*d_y_com.*primary_leg_length.*cos(primary_leg_angle));
% y_com = controller(:,9);
% y_hip = controller(:,8);
% y_TO_est = controller(:,18);
system_energy = m_total_real * ( 0.5*(dx_com.^2 + dy_com.^2) + g*y_com) + 0.5*k0_virtual.*(virtual_spring_rest_length - virtual_spring_length).^2.*contact;
plot_fscope('System Energy',{t}, {[system_energy, desired_system_energy_signal]}, ...
    {{'Contact','System Energy', 'Desired'}},...
    {'Energy'}, {'Time (sec)'}, {'Energy (J)'}, {[0 1000]}, 1, contact_all);

% Plot Raibert placement signals
%%%%% ADD IN MEASUREMENTS
plot_fscope('Raibert Leg Placement',{t,t}, {[desired_raibert_leg_angle_position, primary_leg_angle].*180/pi, [desired_raibert_leg_angle_velocity, primary_leg_angle_velocity].*180/pi}, ...
    {{'Desired','Measured'},{'Desired','Measured'}},...
    {'Position','Velocity'}, {'Time (sec)','Time (sec)'}, {'Degrees','Degrees/s'}, {'auto','auto'});
plot_fscope('Raibert System Velocity',{t,t}, {[desired_raibert_forward_velocity, dx_com_kalman], [desired_raibert_horizontal_direction]}, ...
    {{'Desired','COM Measured'},{'Desired'}},...
    {'Velocity','Direction'}, {'Time (sec)','Time (sec)'}, {'m/s','Sign'}, {'auto','auto'});
%%%%% ADD IN MEASUREMENTS
plot_fscope('Primary Leg Length Extension',{t,t,t}, {[desired_flight_primary_leg_length_position], [desired_flight_primary_leg_length_velocity], [desired_flight_primary_leg_length_acceleration]}, ...
    {{'Commanded'},{'Commanded'},{'Commanded'}},...
    {'Position','Velocity','Acceleration'}, ...
    {'Time (sec)','Time (sec)','Time (sec)'}, {'m','m/s','m/s^2'}, {'auto','auto','auto'});




% % desired leg angles
% raibert_angle = controller(:,10)*180/pi;
% smm_angle = controller(:,11)*180/pi;
% alpha_r = torso_pitch + right_leg_angle - 90;
% alpha_l = torso_pitch + left_leg_angle - 90;
% alpha_v = controller(:,21)*180/pi;

% % desired touchdown leg lengths
% desired_leg_lengths = (d_y_com^2 + l0_virtual^2 - 2*d_y_com*l0_virtual*cosd(torso_pitch - smm_angle + 90)).^0.5;
% plot_fscope('Desired Leg Length at Touchdown',{t}, {[desired_leg_lengths]},{{'Desired Leg Length'}},...
%     {'Desired Leg Length at Touchdown'},{'Time (sec)'},{'Length (meters)'},{[0 1.3]},1,[]);

% % misc
% figure('Name','Time to Apex');
% plot(t,dy_takeoff/g_reduced,'g');

% figure('Name','Leg Extension'); hold on; subplot(311); plot(t,controller(:,35));subplot(312); plot(t,controller(:,36));subplot(313); plot(t,controller(:,37));

% % virtual raibert spring
% figure('Name','Spring Compression and constant');
% subplot(211); hold on; 
% area(t,contact,'LineStyle','none','FaceColor',0.9*[1 1 1]);
% area(t,-contact,'LineStyle','none','FaceColor',0.9*[1 1 1],'HandleVisibility','off');
% plot(t,virtual_spring_deflection_measured);
% subplot(212);  hold on;
% area(t,contact*700,'LineStyle','none','FaceColor',0.9*[1 1 1]);
% area(t,-contact*700,'LineStyle','none','FaceColor',0.9*[1 1 1],'HandleVisibility','off');
% virtual_spring_force = k_virtual_raibert_measured.*virtual_spring_deflection_measured;
% plot(t,k_virtual_raibert_measured);

% force-length curve
%figure('Name','Force-Length Raibert');
%plot3(t,virtual_spring_length, virtual_spring_force_raibert);

% %% Compare GRFs
% 
%  
% % GRF commands for inverse dynamics
% GRFx_desired = controller(:,32) .* contact;
% GRFy_desired = controller(:,33) .* contact;
% GRF_angle_desired = controller(:,34)*180/pi;
% 
% % GRF estimation from Jacobian transpose
% robot_mass = 64;
% GRFx_measured = -robot_mass.*(d_y_com.*sin(torso_pitch).*d_torso_pitch.^2 - primary_leg_length.*sin(primary_leg_global_angle).*d_primary_leg_global_angle.^2 + 2.*d_primary_leg_length.*cos(primary_leg_global_angle).*d_primary_leg_global_angle + dd_primary_leg_length.*sin(primary_leg_global_angle) - d_y_com.*dd_torso_pitch.*cos(torso_pitch) + dd_primary_leg_global_angle.*primary_leg_length.*cos(primary_leg_global_angle));
% GRFy_measured = robot_mass*g + -m_total_real.*(d_y_com.*cos(torso_pitch).*d_torso_pitch.^2 - primary_leg_length.*cos(primary_leg_global_angle).*d_primary_leg_global_angle.^2 - 2.*d_primary_leg_length.*sin(primary_leg_global_angle).*d_primary_leg_global_angle + dd_primary_leg_length.*cos(primary_leg_global_angle) + d_y_com.*dd_torso_pitch.*sin(torso_pitch) - dd_primary_leg_global_angle.*primary_leg_length.*sin(primary_leg_global_angle));
% 
% plot_fscope('Desired GRFs from Inverse Dynamics',{t,t}, {[GRFx_measured.*contact GRFx_desired] [GRFy_measured.*contact GRFy_desired]}, ...
%     {{'Contact','Jacobian GRFx','Desired GRFx'},{'Contact','Jacobian GRFy','Desired GRFy'}},...
%     {'Desired GRFx','Desired GRFy'}, {'Time (sec)','Time (sec)'}, {'Force (N)','Force (N)'}, {[-500 500],[0,3000]}, 2, contact_all);
% 
% % Include boom and force plate
% low_pass_cutoff = 7;
% y_com = controller(:,9);
% x_com = controller(:,40);
% dy_com = [diff(y_com); 0]/scope_sample_time;
% dy_com = idealfilter(timeseries(dy_com , t),[0 low_pass_cutoff], 'pass');
% dy_com = dy_com.Data;
% ddy_com = [0; diff(dy_com)]/scope_sample_time;
% ddy_com = idealfilter(timeseries(ddy_com , t),[0 low_pass_cutoff], 'pass');
% ddy_com = ddy_com.Data;
% GRFy_measured_boom = robot_mass*(ddy_com + g);
% 
% F_force_plate = plot_force_plate_data('April_12_2015 11_14_12_PM.txt');
% t_shift = 18.41;
% t_compare = t_shift:1/200:(t_shift+(size(F_force_plate,1)-1)/200); 
% force_plate_compare = F_force_plate(:,3);
% 
% figure('Name','GRF comparison');
% hold on;
% plot(t, GRFy_measured_boom.*contact);
% %plot(t, GRFy_measured.*contact);
% plot(t, GRFy_desired.*contact);
% %plot(t_compare, force_plate_compare);




%% save data
%hfigs = get(0, 'children');        %Get list of figures
%hgsave(hfigs,sprintf('figures/%s.fig',datestr(clock,'mmmm_dd_yyyy HH_MM_SS_AM')));


