t = SeaTorques.time;
t_select = t > 78;
desired_measured = SeaTorques.signals(2).values(t_select,:);
error = abs((abs(desired_measured(:,1))-abs(desired_measured(:,2)))./abs(desired_measured(:,1)));
figure(100); plot(t(t_select), error*100)
fprintf('SEA error mean = %f%%\n', mean(error)*100);
fprintf('SEA error standard deviation = %f%%\n', std(error)*100);