%% Plot data in workspace
t = time_recorded;
t_start = 10;
t_end =  time_recorded(end);
t_select = t>=t_start & t<=t_end;
q = q_recorded(t_select,:);
dq = dq_recorded(t_select,:);
tau = tau_recorded(t_select,:);
t = time_recorded(t_select);
if exist('qinc_recorded','var') && size(qinc_recorded,1) == length(time_recorded)
    qinc = qinc_recorded(t_select,:);
    dqinc = dqinc_recorded(t_select,:);
end
if exist('velocity_command_recorded','var') && length(velocity_command_recorded) == length(time_recorded)
    velocity_command = velocity_command_recorded(t_select,:);
    velocity_mode = velocity_mode_recorded(t_select,:);
    velocity_command = velocity_command.*velocity_mode;
end
if exist('elmo_velocity_recorded','var') && length(elmo_velocity_recorded) == length(time_recorded)
    elmo_velocity = elmo_velocity_recorded(t_select,:);
end
if exist('elmo_torque_recorded','var') && length(elmo_torque_recorded) == length(time_recorded)
    elmo_torque = elmo_torque_recorded(t_select,:);
end
if exist('desired_sea_torques_recorded','var') && length(desired_sea_torques_recorded) == length(time_recorded)
    desired_sea_torques = desired_sea_torques_recorded(t_select,:);
    desired_sea_torques = bsxfun(@times, desired_sea_torques, velocity_mode);
end
if exist('elmo_current_commands_recorded','var') && length(elmo_current_commands_recorded) == length(time_recorded)
    elmo_current_commands = elmo_current_commands_recorded(t_select,:);
    elmo_current_commands = bsxfun(@times, elmo_current_commands, velocity_mode);
    elmo_current_commands = [elmo_current_commands(2:end,:); 0,0,0,0];
end
if exist('elmo_torque_demands_recorded','var') && length(elmo_torque_demands_recorded) == length(time_recorded)
    elmo_torque_demands = elmo_torque_demands_recorded(t_select,:);
end



% Leg Segment Positions
plot_fscope('Leg Position',{t,t}, {q(:,1:4)*180/pi, q(:,5:8)*180/pi},...
    {{'qBack';'qBackGear';'qFront';'qFrontGear'},{'qBack';'qBackGear';'qFront';'qFrontGear'}},...
    {'Right Leg Position','Left Leg Position'},{'Time (sec)','Time (sec)'},{'Angle (degrees)','Angle (degrees)'},{[0 350],[0 350]});
% Leg Segment Velocities
plot_fscope('Leg Velocity',{t,t}, {dq(:,1:4)*180/pi, dq(:,5:8)*180/pi},...
    {{'dqBack';'dqBackGear';'dqFront';'dqFrontGear'},{'dqBack';'dqBackGear';'dqFront';'dqFrontGear'}},...
    {'Right Leg Velocity','Left Leg Velocity'},{'Time (sec)','Time (sec)'},...
    {'Velocity (degrees / sec)','Velocity (degrees / sec)'},{[-100, 100],[-100, 100]},2,[]);
% Fourbar Leg Geometry
right_leg_length = cos((q(:,1)-q(:,3))/2);
left_leg_length = cos((q(:,5)-q(:,7))/2);
right_leg_length_using_motors = cos((q(:,2)-q(:,4))/2);
left_leg_length_using_motors = cos((q(:,6)-q(:,8))/2);
right_leg_width = sin((q(:,1)-q(:,3))/2);
left_leg_width = sin((q(:,5)-q(:,7))/2);
% plot_fscope('Virtual Leg Length',{t,t}, {[right_leg_length right_leg_length_using_motors], [left_leg_length left_leg_length_using_motors]},...
%     {{'Measured','Using Motor Position'},{'Measured','Using Motor Position'}},...
%     {'Right Leg Length','Left Leg Length'},{'Time (sec)','Time (sec)'},...
%     {'Length (m)','Length (m)'},{[0, 1],[0, 1]},2,[]);
% Virtual Leg Angle
right_leg_angle = (q(:,1)+q(:,3))/2;
left_leg_angle = (q(:,5)+q(:,7))/2;
right_leg_angle_velocity = (dq(:,1)+dq(:,3))/2;
left_leg_angle_velocity = (dq(:,5)+dq(:,7))/2;
% plot_fscope('Virtual Leg Angle',{t,t}, {right_leg_angle*180/pi, left_leg_angle*180/pi},...
%     {{'Measured'},{'Measured'}},...
%     {'Right Leg Angle','Left Leg Angle'},{'Time (sec)','Time (sec)'},...
%     {'Angle (degrees)','Angle (degrees)'},{[90, 270],[90, 270]},2,[]);
% Lateral Positions)
if exist('qinc_recorded','var') && size(qinc_recorded,1) == length(time_recorded)
    plot_fscope('Lateral Position',{t}, {[(qinc(:,5:6))*180/pi, (q(:,9:10))*180/pi]},...
    {{'Right Inc';'Left Inc';'Right Abs';'Left Abs'}},...
    {'Lateral Angles'},{'Time (sec)'},{'Angle (degrees)'},{[-30 30]},1,[]);
else
    plot_fscope('Lateral Position',{t,t}, {[(q(:,9:10))*180/pi], [dq(:,9:10)*180/pi]},...
    {{'Right Inc Position';'Left Inc Position'},{'Right Inc Velocity','Left Inc Velocity'}},...
    {'Lateral Angles','Lateral Velocities'},{'Time (sec)','Time (sec)'},{'Angle (degrees)','Velocity (degrees/s)'},{[-30,30],[-250,250]},2);
end

% IMU data
torso_pitch = q(:,13);
torso_roll = q(:,11);
right_leg_roll = pi/2 - q(:,5);
left_leg_roll = pi/2 - q(:,6);

% Torque data
% spring deflections
deflections = [ q(:,2)-q(:,1), q(:,4)-q(:,3), q(:,6)-q(:,5), q(:,8)-q(:,7)];
% torques desired vs measured
spring_forces = zeros(size(deflections));
for i=1:size(deflections,1)
    spring_forces(i,:) = SeaSpringForce(deflections(i,:)')';
end
%spring_forces = bsxfun(@times, deflections, k_sea_low');
plot_fscope('SEA Torques',{t,t}, {[spring_forces(:,1:2), desired_sea_torques(:,1:2)], [spring_forces(:,3:4), desired_sea_torques(:,3:4)]}, ...
    {{'Back Measured','Front Measured','Back Cmd','Front Cmd'},{'Back Measured','Front Measured','Back Cmd','Front Cmd'}},...
    {'Right Torques','Left Torques'}, {'Time (sec)','Time (sec)'}, {'Torque (Nm)','Torque (Nm)'}, {'auto','auto'}, 2);
% commanded lateral motor torques
lateral_torque_commands = [tau(:,3) tau(:,6)];
plot_fscope('Lateral Torques',{t}, {lateral_torque_commands}, ...
    {{'Right Commanded','Left Commanded'}},...
    {'Lateral Torques'}, {'Time (sec)'}, {'Torque (Nm)'}, {[-700 250]}, 1, []);
% leg force
    right_leg_force_measured = (spring_forces(:,2)-spring_forces(:,1)) ./ right_leg_width;
    left_leg_force_measured = (spring_forces(:,4)-spring_forces(:,3)) ./ left_leg_width;
% plot_fscope('Leg Forces',{t,t}, {[right_leg_force_measured], [left_leg_force_measured]}, ...
%     {{'Measured'},{'Measured'}},...
%     {'Right Leg Force','Left Leg Force'}, {'Time (sec)','Time (sec)'}, {'Force (N)','Force (N)'}, {[-20 1800],[-20 1800]}, 2);
% leg torque
    right_leg_torque_measured = (spring_forces(:,1)+spring_forces(:,2));
    left_leg_torque_measured = (spring_forces(:,3)+spring_forces(:,4));
% plot_fscope('Leg Torques',{t,t}, {[right_leg_torque_measured], [left_leg_torque_measured]}, ...
%     {{'Measured'},{'Measured'}},...
%     {'Right Leg Torque','Left Leg Torque'}, {'Time (sec)','Time (sec)'}, {'Torque (Nm)','Torque (Nm)'}, {[-700,700],[-700,700]}, 2);


% Velocity commands
if exist('velocity_command_recorded','var') && length(velocity_command_recorded) == length(time_recorded)

    if exist('elmo_velocity_recorded','var') && length(elmo_velocity_recorded) == length(time_recorded)
         plot_fscope('Motor Velocity',{t,t}, {[velocity_command(:,1:2), elmo_velocity(:,1:2)], [velocity_command(:,3:4), elmo_velocity(:,3:4)]}, ...
                {{'Back Commanded','Front Commanded','Back Measured','Front Measured'},{'Back Commanded','Front Commanded','Back Measured','Front Measured'}},...
                {'Right Leg Velocities','Left Leg Velocities'}, {'Time (sec)','Time (sec)'}, {'rad/s','rad/s'}, {'auto','auto'}, 2);
         plot_fscope('Motor Velocity',{t,t}, {[dq(:,[2 4]), elmo_velocity(:,1:2)], [dq(:,[6 8]), elmo_velocity(:,3:4)]}, ...
                {{'Back Abs','Front Abs','Back Inc','Front Inc'},{'Back Abs','Front Abs','Back Inc','Front Inc'}},...
                {'Right Leg Velocities','Left Leg Velocities'}, {'Time (sec)','Time (sec)'}, {'rad/s','rad/s'}, {'auto','auto'}, 2);
            
    else
         plot_fscope('Motor Velocity',{t,t}, {[velocity_command(:,1:2), dq(:,[2 4])], [velocity_command(:,3:4), dq(:,[6 8])]}, ...
                {{'Back Commanded','Front Commanded','Back Measured','Front Measured'},{'Back Commanded','Front Commanded','Back Measured','Front Measured'}},...
                {'Right Leg Velocities','Left Leg Velocities'}, {'Time (sec)','Time (sec)'}, {'rad/s','rad/s'}, {'auto','auto'}, 2);
    end

end

% Torque commands
commanded_torques = tau(:,[1 2 4 5]);
if exist('elmo_torque_recorded','var') && length(elmo_torque_recorded) == length(time_recorded)
         commanded_torques = bsxfun(@times, commanded_torques, ~velocity_mode);
         shifted_current_cmd =  elmo_current_commands;
         elmo_torque_commands = shifted_current_cmd*50*0.119*100/1000;
         elmo_torque_commands = bsxfun(@times, elmo_torque_commands, [-1, 1, -1, 1]);
         
         plot_fscope('Motor Torque',{t,t}, {[elmo_torque(:,1:2), elmo_torque_commands(:,1:2), elmo_torque_demands(:,1:2)], [elmo_torque(:,3:4), elmo_torque_commands(:,3:4), elmo_torque_demands(:,3:4)]}, ...
            {{'Back Measured','Front Measured', 'Back Cmd','Front Cmd', 'Back Dmd','Front Dmd'},{'Back Measured','Front Measured', 'Back Cmd','Front Cmd', 'Back Dmd','Front Dmd'}},...
            {'Right Motor Torques','Left Motor Torques'}, {'Time (sec)','Time (sec)'}, {'N','N'}, {'auto','auto'}, 2);           
else
    plot_fscope('Motor Torques',{t,t}, {tau(:,1:2),tau(:,4:5)}, ...
        {{'Back Commanded','Front Commanded'},{'Back Commanded','Front Commanded'}},...
        {'Right Leg Torques','Left Leg Torques'}, {'Time (sec)','Time (sec)'}, {'Torque (Nm)','Torque (Nm)'}, {'auto','auto'}, 2);
end





% figure(101);
% plot(t(t>=79.5&t<=81.5),[desired_sea_torques(t>=79.5&t<=81.5,4),  spring_forces(t>=79.5&t<=81.5,4)])
