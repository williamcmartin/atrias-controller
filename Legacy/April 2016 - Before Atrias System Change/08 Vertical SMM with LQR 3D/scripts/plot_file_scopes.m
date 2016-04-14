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
h=f.fopen('E:\CONT_001.DAT');
cont_data=f.fread(h);
f.fclose(h);
h=f.fopen('E:\CONT2_001.DAT');
cont2_data=f.fread(h);
f.fclose(h);
h=f.fopen('E:\IMU_001.DAT');
imu_data=f.fread(h);
f.fclose(h);

% Unpack the data.
pos = SimulinkRealTime.utils.getFileScopeData(pos_data);
torq = SimulinkRealTime.utils.getFileScopeData(torq_data);
cont = SimulinkRealTime.utils.getFileScopeData(cont_data);
cont2 = SimulinkRealTime.utils.getFileScopeData(cont2_data);
imu = SimulinkRealTime.utils.getFileScopeData(imu_data);
save(sprintf('data/%s',datestr(clock,'mmmm_dd_yyyy HH_MM_SS_AM')), 'pos','torq','cont','cont2','imu');

%% Plot
% Pick subset of data
t = pos.data(:,end);
t_start = 10;
t_end =  t(end);
t_select = t>=t_start & t<=t_end;
position = pos.data(t_select,:);
torque = torq.data(t_select,:);
controller = cont.data(t_select,:);
controller2 = cont2.data(t_select,:);
imu_signals = imu.data(t_select,:);

close all;
t = position(:,end);
contact = ~controller(:,5);
right_left = controller(:,6);
contact_right_left = {100000*(right_left&contact), 100000*(~right_left&contact)};
contact_all = {100000*contact, 100000*contact};
flight_nan = ones(length(contact),1);
flight_nan(~contact) = nan;
contact_nan = ones(length(contact),1);
contact_nan(contact) = nan;


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
% Lateral Positions);
plot_fscope('Lateral Position',{t}, {[(position(:,31:32))*180/pi, (position(:,9:10))*180/pi]},{{'Right Incremental';'Left Incremental';'Right Absolute';'Left Absolute'}},...
    {'Lateral Angles'},{'Time (sec)'},{'Angle (degrees)'},{[-30 30]},1,[]);
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
torso_pitch = imu_angular_positions(:,3) + torso_centerline_pitch_offset_angle;
torso_roll = imu_angular_positions(:,3) + torso_centerline_roll_offset_angle;
right_leg_roll = pi/2 - position(:,31) - torso_centerline_roll_offset_angle;
left_leg_roll = pi/2 - position(:,32) + torso_centerline_roll_offset_angle;
primary_leg_roll = right_leg_roll.*right_left+left_leg_roll.*~right_left;
secondary_leg_roll = right_leg_roll.*~right_left+left_leg_roll.*right_left;

plot_fscope('IMU Raw Data',{t,t}, {imu_gyros.*180/pi, imu_accelerometers},...
    {{'X','Y','Z'},{'X','Y','Z'}},...
    {'Gyros','Accelerometers'},{'Time (sec)','Time (sec)'},...
    {'Radians','m/s^2'},{'auto','auto'});
plot_fscope('IMU Angular Data',{t,t}, {imu_angular_positions.*180/pi, imu_angular_velocities*180/pi},...
    {{'Roll','Yaw','Pitch'},{'Roll','Yaw','Pitch'}},...
    {'Positions','Velocities'},{'Time (sec)','Time (sec)'},...
    {'Degrees','Degrees/s'},{'auto','auto'});

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
% COM position and velocity using robot geometery
x_com_robot = controller(:,8);
dx_com_robot = controller(:,9);
y_com_robot = controller(:,10);
dy_com_robot = controller(:,11);
z_com_robot = controller(:,12);
dz_com_robot = controller(:,13);
% COM state from kalman filter
dx_com_kalman = controller(:,14);
dy_com_kalman = controller(:,15);
z_com_kalman = controller(:,16);
dz_com_kalman = controller(:,17);
dx_kalman_uncertainty = controller(:,18);
dy_kalman_uncertainty = controller(:,19);
z_dz_kalman_uncertainty_eigen_1 = controller(:,20);
z_dz_kalman_uncertainty_eigen_2 = controller(:,21);
% Active controller
hopping_active = controller(:,22);
deadbeat_active = controller(:,23);
% Inverse dynamics
inverse_dynamics_GRFx_target = controller(:,24);
inverse_dynamics_GRFy_target = controller(:,25);
inverse_dynamics_GRFz_target = controller(:,26);
inverse_dynamics_ddRoll_target = controller(:,27);
right_estimated_grf = controller(:,28:30);
left_estimated_grf = controller(:,31:33);
estimated_system_GRF = right_estimated_grf + left_estimated_grf;
estimated_ddRoll = controller(:,34);
% Flight
fourbar_back_desired_position = controller(:,35);
fourbar_front_desired_position = controller(:,36);
fourbar_back_desired_velocity = controller(:,37);
fourbar_front_desired_velocity = controller(:,38);
fourbar_back_desired_acceleration = controller(:,39);
fourbar_front_desired_acceleration = controller(:,40);
% Kalman filter on gear position
kalman_gear_position = controller(:,41:44);
kalman_gear_velocity = controller(:,45:48);
kalman_gear_position_uncertainty = controller(:,49:56);
% Deadbeat Stance
stance_timer = controller(:,57);
z_reference_during_stance = controller(:,58:60);
x_reference_during_stance = controller(:,61:62);
y_reference_during_stance = controller(:,63:64);
% Deadbeat Flight
x_touchdown_target = controller(:,65);
y_touchdown_target = controller(:,66);
desired_foot_position_x = controller(:,67:69);
desired_foot_position_y = controller(:,70:72);
desired_foot_position_z = controller(:,73:75);
desired_primary_leg_roll = controller2(:,1);
frontal_feedforward = controller2(:,2:3);
frontal_adjusted_ref = controller2(:,4:9);
% Closed loop feedback
adaptive_x_foot_compensation = controller2(:,10);
adaptive_y_foot_compensation = controller2(:,11);
A_epislon_c_for_x = controller2(:,12:14);
A_epislon_c_no_bias_for_x = controller2(:,15:17);
A_epislon_c_for_y = controller2(:,18:20);
A_epislon_c_no_bias_for_y = controller2(:,21:23);




% Plot state machine
plot_fscope('State Machine',{t}, {[state_machine, right_left]}, ...
    {{'Touch Down','Locked Contact','Unloading','Takeoff','Flight','Right/Left'}},...
    {'State Machine'}, {'Time (sec)'}, {'Active (true/false)'}, {'auto'});
plot_fscope('GRF estimates',{t,t,t}, {[estimated_vertical_grf_for_state_machine, right_left], right_estimated_grf, left_estimated_grf}, ...
    {{'Vertical GRF','Right/Left'},{'Horizontal GRF','Vertical GRF'},{'Horizontal GRF','Vertical GRF'}},...
    {'Primary GRF','Right Leg GRF','Left Leg GRF'}, {'Time (sec)','Time (sec)','Time (sec)'}, {'N / Body Weight','N','N'}, {'auto','auto','auto'});
% Plot COM position/velocity
plot_fscope('Center of Mass',{t,t}, {[x_com_robot], [dx_com_robot, dx_com_kalman]}, ...
    {{'x_{robot}'},{'dx_{measured}','dx_{kalman}'}},...
    {'COM X Position','COM X Velocity'}, {'Time (sec)','Time (sec)'}, {'m','m/s'}, {'auto','auto'});
plot_fscope('Center of Mass',{t,t}, {[y_com_robot], [dy_com_robot, dy_com_kalman]}, ...
    {{'y_{robot}'},{'dy_{measured}','dy_{kalman}'}},...
    {'COM Y Position','COM Y Velocity'}, {'Time (sec)','Time (sec)'}, {'m','m/s'}, {'auto','auto'});
plot_fscope('Center of Mass',{t,t}, {[z_com_robot, z_com_kalman], [dz_com_robot, dz_com_kalman]}, ...
    {{'z_{measured}','z_{kalman}'},{'dz_{measured}','dz_{kalman}'}},...
    {'COM Z Position','COM Z Velocity'}, {'Time (sec)','Time (sec)'}, {'m','m/s'}, {'auto','auto'});
plot_fscope('Kalman Filter Uncertainty',{t,t,t}, {[dx_kalman_uncertainty], [dx_kalman_uncertainty], [z_dz_kalman_uncertainty_eigen_1, z_dz_kalman_uncertainty_eigen_2]}, ...
    {{''},{''},{''}},...
    {'X Uncertainty','Y Uncertainty','Z Uncertainty'}, {'Time (sec)','Time (sec)','Time (sec)'}, {'','',''}, {'auto','auto','auto'});
% Plot active controller
plot_fscope('Active controller',{t}, {[hopping_active, deadbeat_active]}, ...
    {{'Hopping','Deadbeat'}},...
    {'Active controller'}, {'Time (sec)'}, {'Active (true/false)'}, {'auto'});
% Plot inverse dynamics
GRFx_feedforward_1 = inverse_dynamics_GRFz_target.*x_reference_during_stance(:,1)./z_com_kalman.*flight_nan;
GRFx_feedforward_2 = ((right_estimated_grf(:,2)+left_estimated_grf(:,2)).*contact).*x_reference_during_stance(:,1)./z_com_kalman.*flight_nan;
GRFz_feedforward = @(t) m_total_real*(g + ddz_ref(t));
GRFy_feedforward = inverse_dynamics_GRFz_target.*contact.*y_com_robot./z_com_kalman;

plot_fscope('Inverse Dynamics',{t,t,t}, {[inverse_dynamics_GRFx_target.*contact, estimated_system_GRF(:,1).*contact, GRFx_feedforward_1, GRFx_feedforward_2], [inverse_dynamics_GRFy_target.*contact, estimated_system_GRF(:,2).*contact, GRFy_feedforward], [inverse_dynamics_GRFz_target.*contact, estimated_system_GRF(:,3).*contact]}, ...
    {{'Target','Estimated','Feedforward','Feedforward'},{'Target','Estimated','Feedforward'},{'Target','Estimated'}},...
    {'Ground Reaction Force X','Ground Reaction Force Y','Ground Reaction Force Z'}, ...
    {'Time (sec)','Time (sec)','Time (sec)'}, {'N','N','N'}, {'auto','auto','auto'});
plot_fscope('Torso Roll Acceleration',{t}, {[inverse_dynamics_ddRoll_target, estimated_ddRoll]}, ...
    {{'Target','Estimated'}},...
    {'Roll Acceleration'}, {'Time (sec)'}, {'rad/s^2'}, {'auto'});
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
plot_fscope('Stance: Y Reference Signals',{t,t}, {[y_reference_during_stance(:,1).*flight_nan, y_com_robot], [y_reference_during_stance(:,2).*flight_nan, dy_com_kalman]}, ...
    {{'Commanded','Measured'},{'Commanded','Measured'}},...
    {'Position','Velocity'}, ...
    {'Time (sec)','Time (sec)'}, {'m','m/s'}, {'auto','auto'});
time_until_touchdown = (-dz_com_kalman-sqrt( max(dz_com_kalman.^2 - 4*g/2*(z_land-z_com_kalman),0) ))/(-g);
plot_fscope('Flight Time',{t}, {[time_until_touchdown.*~contact, flight_duration*ones(size(t))]}, ...
    {{'Estimated','Nominal'}},...
    {'Flight Time'}, ...
    {'Time (sec)'}, {'Time (sec)'}, {'auto'});
plot_fscope('Flight: Foot Position Reference Signals',{t,t,t}, {[desired_foot_position_x(:,1).*contact_nan, x_com_robot, x_touchdown_target.*contact_nan], [desired_foot_position_y(:,1).*contact_nan, y_com_robot, y_touchdown_target.*contact_nan], [desired_foot_position_z(:,1).*contact_nan, z_com_robot]}, ...
    {{'Commanded','Measured','Touchdown Target'},{'Commanded','Measured','Touchdown Target'},{'Commanded','Measured'}},...
    {'X','Y','Z'}, ...
    {'Time (sec)','Time (sec)','Time (sec)'}, {'m','m','m'}, {'auto','auto','auto'});

plot_fscope('Flight: Frontal LQR Commands',{t,t,t}, {[fontal_tau_lqr], [frontal_tau_pd], [frontal_feedforward]}, ...
    {{'Primary','Secondary'},{'Primary','Secondary'},{'Primary','Secondary'}},...
    {'LQR','PD','Feedforward'}, ...
    {'Time (sec)','Time (sec)','Time (sec)'}, {'Nm','Nm','Nm'}, {'auto','auto','auto'});

plot_fscope('Flight: Frontal LQR Adjusted Reference',{t,t,t}, {[frontal_adjusted_ref(:,1), torso_roll]*180/pi, [frontal_adjusted_ref(:,2), primary_leg_roll]*180/pi, [frontal_adjusted_ref(:,3), secondary_leg_roll]*180/pi}, ...
    {{'Reference','Measured'},{'Reference','Measured'},{'Reference','Measured'}},...
    {'Roll','Beta 1','Beta 2'}, ...
    {'Time (sec)','Time (sec)','Time (sec)'}, {'Degrees','Degrees','Degrees'}, {'auto','auto','auto'});

plot_fscope('Foot Placement Adaptive Compensation',{t,t}, {[adaptive_x_foot_compensation.*contact_nan],[adaptive_y_foot_compensation.*contact_nan]}, ...
    {{'X'},{'Y'}},...
    {'X Foot Correction', 'Y Foot Correction'}, ...
    {'Time (sec)','Time (sec)'}, {'m','m'}, {'auto','auto'});
plot_fscope('Adaptive Model - X',{t,t}, {[A_epislon_c_for_x], [A_epislon_c_no_bias_for_x]}, ...
    {{'A','epsilon','c'},{'A','epsilon','c'}},...
    {'Bias','No Bias'}, ...
    {'Time (sec)','Time (sec)'}, {'',''}, {'auto','auto'});
plot_fscope('Adaptive Model - Y',{t,t}, {[A_epislon_c_for_y], [A_epislon_c_no_bias_for_y]}, ...
    {{'A','epsilon','c'},{'A','epsilon','c'}},...
    {'Bias','No Bias'}, ...
    {'Time (sec)','Time (sec)'}, {'',''}, {'auto','auto'});



