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
t_end =  t(end);
position = pos.data(t>=t_start & t<=t_end,:);
torque = torq.data(t>=t_start & t<=t_end,:);
controller = cont.data(t>=t_start & t<=t_end,:);
imu_signals = imu.data(t>=t_start & t<=t_end,:);

close all;
t = position(:,end);
contact = ~controller(:,5);
right_left = controller(:,6);
contact_right_left = {100000*(right_left&contact), 100000*(~right_left&contact)};
contact_all = {100000*contact, 100000*contact};

% Plot position data
% 1-13: encoder positions
% 14-26: encoder velocities

% Leg Segment Positions
plot_fscope('Leg Position',{t,t}, {position(:,1:4)*180/pi, position(:,5:8)*180/pi},...
    {{'qFront';'qFrontGear';'qBack';'qBackGear'},{'qFront';'qFrontGear';'qBack';'qBackGear'}},...
    {'Right Leg Position','Left Leg Position'},{'Time (sec)','Time (sec)'},{'Angle (degrees)','Angle (degrees)'},{[0 350],[0 350]});
incremental_gear_positions = position(:,27:30); % rFront rBack lFront lBack 
kalman_filtered_gear_positions = controller(:,38:41);

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
plot_fscope('Torso Pitch',{t}, {[torso_pitch*180/pi, torso_pitch_velocity*180/pi]},{{'Contact','Pitch','Velocity'}},...
    {'Torso Pitch'},{'Time (sec)'},{'Angle (degrees)'},{[-60 60]},1,[contact_all]);
% Lateral Positions
boom_roll = position(:,11);
torso_roll = boom_roll - boom_mount_angle + torso_centerline_roll_offset_angle;
plot_fscope('Torso Roll',{t}, {[torso_roll*180/pi]},{{'Contact','Pitch'}},...
    {'Torso Roll'},{'Time (sec)'},{'Angle (degrees)'},{[-60 60]},1,[contact_all]);
plot_fscope('Lateral Position',{t}, {[position(:,31:32)*180/pi, position(:,9:10)*180/pi]},{{'Right Measured';'Left Measured'}},...
    {'Lateral Leg Angles'},{'Time (sec)'},{'Angle (degrees)'},{[-30 30]},1,[]);
right_lateral_global = (position(:,31)-boom_roll+boom_mount_angle);
left_lateral_global = (position(:,32)+boom_roll-boom_mount_angle);
plot_fscope('Lateral Global Orientation',{t}, {[right_lateral_global*180/pi, left_lateral_global*180/pi]},{{'Right Measured', 'Left Measured'}},...
    {'Lateral Leg Global Angles'},{'Time (sec)'},{'Angle (degrees)'},{[-30 30]},1,[]);
% Raw encoder data
raw_encoder_signals = position(:,39:46);
raw_binary_values = dec2bin(raw_encoder_signals);
plot_fscope('Raw Encoder Signals',{t}, {[raw_encoder_signals]},{{'1','2','3','4','5','6','7','8'}},...
    {'Renishaw Optical Encoders'},{'Time (sec)'},{'Ticks'},{['auto']},1,[]);


% Plot IMU data
% 1-3: IMU gyros
% 4-6: IMU accelerometers
imu_gyros = imu_signals(:, 1:3);
imu_accelerometers = imu_signals(:, 4:6);
imu_angular_positions = imu_signals(:, 7:9);
imu_angular_velocities = imu_signals(:, 10:12);
plot_fscope('IMU Raw Data',{t,t}, {imu_gyros.*180/pi, imu_accelerometers},...
    {{'X','Y','Z'},{'X','Y','Z'}},...
    {'Gyros','Accelerometers'},{'Time (sec)','Time (sec)'},...
    {'Radians','m/s^2'},{'auto','auto'});
plot_fscope('IMU Angular Data',{t,t}, {imu_angular_positions.*180/pi, imu_angular_velocities*180/pi},...
    {{'Roll','Yaw','Pitch'},{'Roll','Yaw','Pitch'}},...
    {'Positions','Velocities'},{'Time (sec)','Time (sec)'},...
    {'Radians','Radians/s'},{'auto','auto'});

% Plot torque data
% 1-6: commanded motor torques
% 7-12: desired output torques


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
% COM position and velocity using boom
x_com_boom = controller(:,8);
dx_com_boom = controller(:,9);
z_com_boom = controller(:,10);
dz_com_boom = controller(:,11);
% COM position and velocity using robot geometery
x_com_robot = controller(:,12);
dx_com_robot = controller(:,13);
y_com_robot = controller(:,14);
dy_com_robot = controller(:,15);
z_com_robot = controller(:,16);
dz_com_robot = controller(:,17);
% COM state from kalman filter
dx_com_kalman = controller(:,18);
z_com_kalman = controller(:,19);
dz_com_kalman = controller(:,20);
dx_kalman_uncertainty = controller(:,21);
z_dz_kalman_uncertainty_eigen_1 = controller(:,22);
z_dz_kalman_uncertainty_eigen_2 = controller(:,23);
% Active controller
hopping_active = controller(:,24);
deadbeat_active = controller(:,25);
% GRFs
inverse_dynamics_GRFx_target = controller(:,26);
inverse_dynamics_GRFz_target = controller(:,27);
right_estimated_grf = controller(:,28:29);
left_estimated_grf = controller(:,30:31);
% Flight
fourbar_back_desired_position = controller(:,32);
fourbar_front_desired_position = controller(:,33);
fourbar_back_desired_velocity = controller(:,34);
fourbar_front_desired_velocity = controller(:,35);
fourbar_back_desired_acceleration = controller(:,36);
fourbar_front_desired_acceleration = controller(:,37);
% Kalman filter on gear position
kalman_gear_position = controller(:,38:41);
kalman_gear_velocity = controller(:,42:45);
kalman_gear_position_uncertainty = controller(:,46:53);
% Deadbeat
z_reference_during_stance = controller(:,54:56);
x_reference_during_stance = controller(:,57:58);
x_touchdown_target = controller(:,59);
y_touchdown_target = controller(:,60);
desired_foot_position_x = controller(:,61:63);
desired_foot_position_y = controller(:,64:66);
desired_foot_position_z = controller(:,67:69);
deadbeat_primary_leg_roll_target = controller(:,70:72);
adaptive_x_foot_compensation = controller(:,73);



flight_nan = ones(length(contact),1);
flight_nan(~contact) = nan;
contact_nan = ones(length(contact),1);
contact_nan(contact) = nan;
% Plot state machine
plot_fscope('State Machine',{t}, {[state_machine, right_left]}, ...
    {{'Touch Down','Locked Contact','Unloading','Takeoff','Flight','Right/Left'}},...
    {'State Machine'}, {'Time (sec)'}, {'Active (true/false)'}, {'auto'});
plot_fscope('GRF estimates',{t,t,t}, {[estimated_vertical_grf_for_state_machine, right_left], right_estimated_grf, left_estimated_grf}, ...
    {{'Vertical GRF','Right/Left'},{'Horizontal GRF','Vertical GRF'},{'Horizontal GRF','Vertical GRF'}},...
    {'Primary GRF','Right Leg GRF','Left Leg GRF'}, {'Time (sec)','Time (sec)','Time (sec)'}, {'N / Body Weight','N','N'}, {'auto','auto','auto'});
% Plot COM position/velocity
plot_fscope('Center of Mass',{t,t}, {[z_com_boom, z_com_robot, z_com_kalman], [dz_com_boom, dz_com_robot, dz_com_kalman]}, ...
    {{'z_{true}','z_{measured}','z_{kalman}'},{'dz_{true}','dz_{measured}','dz_{kalman}'}},...
    {'COM Z Position','COM Z Velocity'}, {'Time (sec)','Time (sec)'}, {'m','m/s'}, {'auto','auto'});
plot_fscope('Center of Mass',{t,t}, {[x_com_boom, x_com_robot], [dx_com_boom, dx_com_robot, dx_com_kalman]}, ...
    {{'x_{boom}','x_{robot}'},{'dx_{true}','dx_{measured}','dx_{kalman}'}},...
    {'COM X Position','COM X Velocity'}, {'Time (sec)','Time (sec)'}, {'m','m/s'}, {'auto','auto'});
plot_fscope('Kalman Filter Uncertainty',{t,t}, {[dx_kalman_uncertainty], [z_dz_kalman_uncertainty_eigen_1, z_dz_kalman_uncertainty_eigen_2]}, ...
    {{''},{''}},...
    {'X Uncertainty','Z Uncertainty'}, {'Time (sec)','Time (sec)'}, {'',''}, {'auto','auto'});
% Plot active controller
plot_fscope('Active controller',{t}, {[hopping_active, deadbeat_active]}, ...
    {{'Hopping','Deadbeat'}},...
    {'Active controller'}, {'Time (sec)'}, {'Active (true/false)'}, {'auto'});
% Plot inverse dynamics
GRFx_feedforward_1 = inverse_dynamics_GRFz_target.*x_reference_during_stance(:,1)./z_com_kalman.*flight_nan;
GRFx_feedforward_2 = ((right_estimated_grf(:,2)+left_estimated_grf(:,2)).*contact).*x_reference_during_stance(:,1)./z_com_kalman.*flight_nan;
plot_fscope('Inverse Dynamics',{t,t}, {[inverse_dynamics_GRFx_target.*contact, (right_estimated_grf(:,1)+left_estimated_grf(:,1)).*contact, GRFx_feedforward_1, GRFx_feedforward_2], [inverse_dynamics_GRFz_target.*contact, (right_estimated_grf(:,2)+left_estimated_grf(:,2)).*contact]}, ...
    {{'Target','Estimated','Feedforward','Feedforward'},{'Target','Estimated'}},...
    {'Ground Reaction Force X','Ground Reaction Force Z'}, ...
    {'Time (sec)','Time (sec)'}, {'N','N'}, {'auto','auto'});
% Plot primary leg four bar tracking during flight
plot_fscope('Primary Flight Fourbar Tracking',{t,t,t}, ...
    {[fourbar_back_desired_position.*contact_nan, primary_back_motor_positions, fourbar_front_desired_position.*contact_nan, primary_front_motor_positions].*180/pi, [fourbar_back_desired_velocity.*contact_nan, fourbar_front_desired_velocity.*contact_nan].*180/pi, [fourbar_back_desired_acceleration.*contact_nan, fourbar_front_desired_acceleration.*contact_nan].*180/pi}, ...
    {{'Back Commanded', 'Back Measured', 'Front Commanded','Front Measured'},{'dBack Commanded', 'dFront Commanded'},{'ddBack Commanded', 'ddFront Commanded'}},...
    {'Position','Velocity','Acceleration'}, ...
    {'Time (sec)','Time (sec)','Time (sec)'}, {'Degrees','Degrees/s','Degrees/s^2'}, {'auto','auto','auto'});
% Plot deadbeat signals
plot_fscope('Stance: Z Reference Signals',{t,t,t}, {[z_reference_during_stance(:,1).*flight_nan, z_com_kalman], [z_reference_during_stance(:,2).*flight_nan, dz_com_kalman], [z_reference_during_stance(:,3).*flight_nan]}, ...
    {{'Commanded','Measured'},{'Commanded','Measured'},{'Commanded'}},...
    {'Position','Velocity','Acceleration'}, ...
    {'Time (sec)','Time (sec)','Time (sec)'}, {'m','m/s','m/s^2'}, {'auto','auto','auto'});
plot_fscope('Stance: X Reference Signals',{t,t}, {[x_reference_during_stance(:,1).*flight_nan, x_com_robot], [x_reference_during_stance(:,2).*flight_nan, dx_com_kalman]}, ...
    {{'Commanded','Measured'},{'Commanded','Measured'}},...
    {'Position','Velocity'}, ...
    {'Time (sec)','Time (sec)'}, {'m','m/s'}, {'auto','auto'});
plot_fscope('Flight: Foot Position Reference Signals',{t,t,t}, {[desired_foot_position_x(:,1).*contact_nan, x_com_robot, x_touchdown_target.*contact_nan], [desired_foot_position_y(:,1).*contact_nan, y_com_robot, y_touchdown_target.*contact_nan], [desired_foot_position_z(:,1).*contact_nan, z_com_robot]}, ...
    {{'Commanded','Measured','Touchdown Target'},{'Commanded','Measured','Touchdown Target'},{'Commanded','Measured'}},...
    {'X','Y','Z'}, ...
    {'Time (sec)','Time (sec)','Time (sec)'}, {'m','m','m'}, {'auto','auto','auto'});
plot_fscope('Foot Placement Adaptive Compensation',{t}, {[adaptive_x_foot_compensation]}, ...
    {{'X'}},...
    {'Foot Correction'}, ...
    {'Time (sec)'}, {'m'}, {'auto'});



