% Suspending a mass off SEAs
suspended_mass = (27.5+27.5+24+24+24+2.5+3+20+20+20)/2.2;
enable_back_right = 0;
enable_front_right = 0;
enable_back_left = 0;
enable_front_left = 0;

% Lateral hip PID control params
% Move boom so that lateral angle is vertical

% Lateral limits
minimum_lateral_angle = -9.5*pi/180;
maximum_lateral_angle = 18*pi/180;

%% Sagittal motor PD control
kp_motor = 3000; % Nm/rad 5000
kd_motor = 0.06*kp_motor; % Nm/rad 300
