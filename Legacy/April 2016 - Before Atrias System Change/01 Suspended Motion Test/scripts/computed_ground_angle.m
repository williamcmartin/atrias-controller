r_lateral_ground_angle = pi - pos.data(:,11) - (pi/2 - (boom_mount_angle + pos.data(:,9)));
l_lateral_ground_angle = pi - pos.data(:,11) - (pi/2 - (boom_mount_angle - pos.data(:,10)));
r_lateral_global_angle = -pos.data(:,11) + boom_mount_angle - pos.data(:,9);
l_lateral_global_angle = -pos.data(:,11) + boom_mount_angle + pos.data(:,10);
figure('Name','Lateral ground angles');
hold on;
plot(pos.data(:,end), r_lateral_ground_angle*180/pi);
plot(pos.data(:,end), l_lateral_ground_angle*180/pi);
