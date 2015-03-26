%% record a data point
leg_str = 'RF';
leg_idx = 2;
deflection = deflections(:,leg_idx); % RB RF LB LF
avg_deflection = mean(deflection(t>50&t<60));
spring_load = 0;
data = [spring_load avg_deflection];
save([leg_str '1.mat'],'data')

%% plot points
num_of_pts = 4;
data_pts = zeros(num_of_pts,2);
for i=1:num_of_pts
    load(sprintf('%s%d',leg_str,i));
    data_pts(i,:) = data;
end

figure('Name',[leg_str ' Deflection-Torque Curve']);
scatter(data_pts(:,2),-data_pts(:,1)*g*0.5)