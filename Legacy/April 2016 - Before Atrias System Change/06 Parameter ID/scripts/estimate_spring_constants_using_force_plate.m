%% Load data
using_right_leg = true;
scope_freq = 250;
plate_freq = 200;
close all;
t_end = pos.data(end,end);

% if(using_right_leg)
%     load('April_09_2015  6_25_38_PM.mat');
%     F_plate_data = [mean(plot_force_plate_data( 'DSADATA00010.txt' ));
%                     mean(plot_force_plate_data( 'DSADATA00011.txt' ));
%                     mean(plot_force_plate_data( 'DSADATA00012.txt' ));
%                     mean(plot_force_plate_data( 'DSADATA00013.txt' ))];
%                     %mean(plot_force_plate_data( 'DSADATA00014.txt' ))];
%     load_intervals = [10 35; 50 85; 105 134; 140 185; 205 250; t_end t_end];
% else
%     load('April_09_2015  8_08_05_PM.mat');
%     F_plate_data = [mean(plot_force_plate_data( 'DSADATA00020.txt' ));
%                     mean(plot_force_plate_data( 'DSADATA00021.txt' ));
%                     mean(plot_force_plate_data( 'DSADATA00022.txt' ));
%                     mean(plot_force_plate_data( 'DSADATA00023.txt' ));
%                     mean(plot_force_plate_data( 'DSADATA00024.txt' ))];         
%     load_intervals = [10 35; 50 80; 90 120; 147.4 176; 245 265; t_end t_end];
% end

% % Data set 1
% % Left leg data set
% F_plate_data = plot_force_plate_data( 'April_09_2015  8_50_42_PM.txt' );
% load('April_09_2015  8_50_42_PM.mat');
% force_plate_time = 20;
% force_plate_t_shift = 59.39;
% t_shift = 8;

% Data set 2
% Right leg data set
% interesting: figure(21); plot(t,F_vector); hold on; plot(t, 3500*(right_deflections(:,2)-right_deflections(:,1))./right_leg_width)
F_plate_data = plot_force_plate_data( 'April_12_2015 11_14_12_PM.txt' );
load('April_12_2015 11_14_12_PM.mat');
force_plate_time = 42.18+12.82;
force_plate_t_shift = 18.528;
t_shift = 42.18;

F_vector = [];
for i=t_shift*scope_freq:(force_plate_time*scope_freq)
    fp_index = round(plate_freq / scope_freq * i);
    F_vector = [F_vector; F_plate_data(fp_index,:)];
end
data_start = round((force_plate_t_shift+t_shift)*scope_freq);
data_end = data_start+(force_plate_time-t_shift)*scope_freq;


% data_start = 10*scope_freq;
% data_end = data_start+200*scope_freq;

position = pos.data(data_start:data_end,:);
t = position(:,end);
boom_mount_angle = 7.2824 * pi/180;
right_leg_length = cos((position(:,3)-position(:,1))/2);
left_leg_length = cos((position(:,7)-position(:,5))/2);
right_leg_width = sin((position(:,3)-position(:,1))/2);
left_leg_width = sin((position(:,7)-position(:,5))/2);
right_leg_angle = (position(:,3)+position(:,1))/2;
left_leg_angle = (position(:,7)+position(:,5))/2;
torso_pitch = position(:,13);
boom_roll = position(:,11);
right_lateral_global = (position(:,31)-boom_roll+boom_mount_angle);
left_lateral_global = (position(:,32)+boom_roll-boom_mount_angle);
right_deflections = [position(:,4)-position(:,3), position(:,2)-position(:,1)];
left_deflections = [position(:,8)-position(:,7), position(:,6)-position(:,5)];

% Create vector of vertical loads
% F_vector = zeros(length(t),3);
% for i=1:size(F_plate_data,1)
%     F_vector = F_vector + (t>=load_intervals(i,1) & t<=load_intervals(i+1,1))*F_plate_data(i,:);
% end

%% Solve for torques in fourbar
Fx = F_vector(:,1);
Fz = F_vector(:,3);
if(using_right_leg)
    l = right_leg_length;
    gamma = right_leg_angle + torso_pitch;
    w = right_leg_width;
    delta = right_deflections;
    roll = right_lateral_global;
else
    l = left_leg_length;
    gamma = left_leg_angle + torso_pitch;
    w = left_leg_width;
    delta = left_deflections;
    roll = left_lateral_global;
end
tau = zeros(length(t),2);
tau_measured = zeros(length(t),2);
F_predicted = zeros(length(t),2);
for i=1:length(t)
    F = [Fz(i)./cos(roll(i)); Fx(i)./cos(roll(i))];
    A = [l(i).*sin(gamma(i))-1./w(i).*cos(gamma(i)), l(i).*sin(gamma(i))+1./w(i).*cos(gamma(i));
         l(i).*cos(gamma(i))-1./w(i).*sin(gamma(i)), l(i).*cos(gamma(i))+1./w(i).*sin(gamma(i))];
    tau(i,:) = A \ F;
    tau_measured(i,:) = delta(i,[2 1]).*[3824 3343];
    F_predicted(i,:) = A*tau_measured(i,:)';
end

figure('Name', 'Estimated four bar leg torques');
plot(t,tau);

figure('Name', 'Deflection vs Torque')
hold on;
Nth = 1;
x_data_1 = abs(delta(1:Nth:end,1));
y_data_1 = abs(tau(1:Nth:end,2));
x_data_2 = abs(delta(1:Nth:end,2));
y_data_2 = abs(tau(1:Nth:end,1));
scatter(x_data_1,y_data_1,'.b');
scatter(x_data_2,y_data_2,'.r');



%% Solve for SEA spring constant
%leg_deflections = right_deflections;
%leg_deflections = left_deflections;
%% Left Leg
%k_sea_estimate = F_vertical ./ ( cos(left_lateral_global) .* ( left_leg_length.*(left_deflections(:,2)+left_deflections(:,1)).*sin(left_leg_angle+torso_pitch) - (left_deflections(:,2)-left_deflections(:,1))./left_leg_width.*cos(left_leg_angle+torso_pitch)) );

%% Right Leg
%k_sea_estimate = F_vertical ./ ( cos(right_lateral_global) .* ( right_leg_length.*(right_deflections(:,2)+right_deflections(:,1)).*sin(right_leg_angle+torso_pitch) - (right_deflections(:,2)-right_deflections(:,1))./right_leg_width.*cos(right_leg_angle+torso_pitch)) );

% %% Evaluate results
% figure('Name','SEA Spring Constant estimate'); plot(t, k_sea_estimate)
% data_x = [];
% data_y = [];
% for i=1:size(F,1)
%     selection = t>=load_intervals(i,1) & t<=load_intervals(i+1,1);
%     data_x = [data_x; mean(mean(abs(leg_deflections(selection,:)),2))];
%     data_y = [data_y; mean(k_sea_estimate(selection))];
% end
% figure('Name','Average deflection vs spring constant');
% scatter(data_x, data_y);
% 
% %% Boom
% qRoll = pos.data(:,11);
% dqRoll = pos.data(:,24);
% qYaw = pos.data(:,12);
% dqYaw = pos.data(:,25);
% qPitch = pos.data(:,13);
% dqPitch = pos.data(:,26);
% [ x_com, dx_com, y_com, dy_com , z_com] = ComCalculation2D( qRoll, dqRoll, qYaw, dqYaw, qPitch, dqPitch,l_boom_projected, h_boom, boom_mount_angle, d_y_boom_com_offset )
% lf = left_leg_length.*sin(left_lateral_global) + 0.2.*cos(left_lateral_global);
