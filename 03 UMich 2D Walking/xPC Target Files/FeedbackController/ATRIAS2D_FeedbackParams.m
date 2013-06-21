function [kp, kd, qTdesired] = ATRIAS2D_FeedbackParams

%% PD gains
epsilon = 0.1; %0.3;% 0.1;% 0.05;
kp = 5;
kd = 3; % 1

kp=kp/epsilon^2;
kd = kd/epsilon;

qTdesired=-10*pi/180;

end