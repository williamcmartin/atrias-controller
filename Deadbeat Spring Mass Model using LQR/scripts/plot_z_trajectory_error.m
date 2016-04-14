%% Quantify Z Trajectory error
length_of_signal = 60;
ignore_first = 0;
time = z_stance_trajectory.time;
start_time = time(diff(stance_time_history.signals.values) == 1);
selection = time > start_time+ignore_first & time <= (start_time+length_of_signal);
time = time(selection);
z_stance_measured_position_trajectory = z_stance_trajectory.signals(1).values(selection,1);
z_stance_desired_position_trajectory = z_stance_trajectory.signals(1).values(selection,2);
z_stance_measured_velocity_trajectory = z_stance_trajectory.signals(2).values(selection,1);
z_stance_desired_velocity_trajectory = z_stance_trajectory.signals(2).values(selection,2);
position_error = abs(z_stance_measured_position_trajectory - z_stance_desired_position_trajectory);
velocity_error = abs(z_stance_measured_velocity_trajectory - z_stance_desired_velocity_trajectory);

figure('Name','Z Trajectory'); 
subplot(221);
plot(time, [z_stance_measured_position_trajectory, z_stance_desired_position_trajectory]);
title('Z Position');
subplot(222);
plot(time, position_error);
title('Position Error');
subplot(223);
plot(time, [z_stance_measured_velocity_trajectory, z_stance_desired_velocity_trajectory]);
title('Z Velocity');
subplot(224);
plot(time, velocity_error);
title('Velocity Error');

fprintf('Mean Position Error: %f m\n',mean(position_error));
fprintf('Mean Velocity Error: %f m/s\n',mean(velocity_error));

%% Save Data
save('z_trajectory_data','z_stance_trajectory','stance_time_history');