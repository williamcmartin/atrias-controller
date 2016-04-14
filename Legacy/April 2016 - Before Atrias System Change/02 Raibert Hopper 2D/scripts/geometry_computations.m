% Boom
l_boom = 1.767;
h_boom = 0.99;
mount_angle = 7.2824 * pi/180;
x_mount_to_center = 0.22339;
y_mount_to_pelvis = 0.3176;
l_yaw_to_pelvis = sqrt(l_boom^2 + x_mount_to_center^2 + y_mount_to_pelvis^2 - 2*l_boom*sqrt(x_mount_to_center^2 + y_mount_to_pelvis^2)*cos(pi - mount_angle - asin(y_mount_to_pelvis/sqrt(x_mount_to_center^2 + y_mount_to_pelvis^2))));
boom_pelvis_offset_angle = acos((x_mount_to_center^2 + y_mount_to_pelvis^2 - l_boom^2 - l_yaw_to_pelvis^2) / (-2*l_boom*l_yaw_to_pelvis));


% Lateral target
r = 0.2;
l = 0.9;
l_star = l_yaw_to_pelvis;
target_left = asin(-l/(l_star*sqrt(r^2*l^2 + (1-r^2)^2))) - asin(r*l/sqrt(r^2*l^2 + (1-r^2)^2)) - mount_angle + boom_pelvis_offset_angle;
target_right = asin(l/(l_star*sqrt(r^2*l^2 + (1+r^2)^2))) - asin(-r*l/sqrt(r^2*l^2 + (1+r^2)^2)) - mount_angle + boom_pelvis_offset_angle;


