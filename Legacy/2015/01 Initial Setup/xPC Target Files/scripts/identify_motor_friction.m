% load data collected with unloaded motors

%% select data
t_select = t>20&t<100; 
t_fit = t(t_select);
% velocities
motor_velocities = [pos.data(t_select,17) pos.data(t_select,15) pos.data(t_select,21) pos.data(t_select,19)]; % RB RF LB LF
motor_accel = [diff(motor_velocities); ones(1,4)] ;
for i=1:4
    motor_accel(:,i) = smooth(motor_accel(:,i),45);
end
% torques
resis_torques = [torq.data(t_select,1:2) torq.data(t_select,4:5)] - spring_forces(t_select,:); % RB RF LB LF
%% plot data
index = 4;
torque_threshold = 0;
accel_threshold = 0.0005; % near constant velocity
selection = (resis_torques > torque_threshold | resis_torques < -torque_threshold) & (motor_accel < accel_threshold & motor_accel > -accel_threshold);
figure('Name','Velocity vs Torque');
x = motor_velocities(selection(:,index));
y = resis_torques(selection(:,index));
scatter(x,y,'.')

% curve fit to a + b*sign(x) + c*x

