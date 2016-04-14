%% Unit Test for distribute_hip_knee_torques

% Desired hip/knee torques
tau12_des = 0; % positive values extend the knee
tau23_des = 500; % positive values pitch the torso backward

% Knee angle (distance from 180 degrees)
delta_phi12 = 5*pi/180;

% Distribution parameters
lambda_knee = 1;
lambda_hip = 1;
max_motor_torque = 500;

% Leg geometry
l_seg = 0.5;
min_splay_angle = 35*pi/180; %defines straight-leg length for virtual leg
l_v = l_seg*cos(min_splay_angle/2);
phi12 = (pi - min_splay_angle) - delta_phi12;
phi23 = 50*pi/180;
v12 = max(min(2*asin(max(min(sin(0.5*phi12)*l_seg/l_v,1),-1)),179*pi/180),0);
v23 = phi23 + 0.5*(v12-phi12);

% Call function
[tauF,tauB, Jinv, constraint_error_flag] =...
    distribute_hip_knee_torques(tau12_des,tau23_des,l_seg,l_v,v12,v23,phi12,phi23,lambda_knee,lambda_hip,max_motor_torque);

tau_virtual = Jinv * [tauF; tauB];
tau12 = tau_virtual(1);
tau23 = tau_virtual(2);

tau_motor_des = inv(Jinv)*[tau12_des;tau23_des];
tauF_des = tau_motor_des(1);
tauB_des = tau_motor_des(2);


% Check values
resolution = 10;
tau_motor_limits = [repmat(max_motor_torque,1,resolution),...  %tauF
                    max_motor_torque:-(2*max_motor_torque/(resolution-1)):-max_motor_torque,...
                    repmat(-max_motor_torque,1,resolution),...
                    -max_motor_torque:(2*max_motor_torque/(resolution-1)):max_motor_torque;
                    ...
                    max_motor_torque:-(2*max_motor_torque/(resolution-1)):-max_motor_torque,... %tauB
                    repmat(-max_motor_torque,1,resolution),...
                    -max_motor_torque:(2*max_motor_torque/(resolution-1)):max_motor_torque,...
                    repmat(max_motor_torque,1,resolution)];
tau_hip_knee_limits = Jinv*tau_motor_limits;

% Plot stuff
figure('Name','Feasible Torque Distribution');
subplot(121);
plot(tau_motor_limits(1,1:resolution),tau_motor_limits(2,1:resolution),'r-',...
     tau_motor_limits(1,resolution+1:2*resolution),tau_motor_limits(2,resolution+1:2*resolution),'g-',...
     tau_motor_limits(1,2*resolution+1:3*resolution),tau_motor_limits(2,2*resolution+1:3*resolution),'b-',...
     tau_motor_limits(1,3*resolution+1:4*resolution),tau_motor_limits(2,3*resolution+1:4*resolution),'y-',...
     tauF_des,tauB_des,'mo',...
     tauF,tauB,'ko');
padding = 100;
xlim([min([tauF_des,tauF,-2*max_motor_torque-padding]), max([tauF_des,tauF,2*max_motor_torque + padding])]);
ylim([min([tauB_des,tauB,-2*max_motor_torque-padding]), max([tauB_des,tauB,2*max_motor_torque + padding])]);
xlabel('tauF'); ylabel('tauB');
title('Motor Space');

subplot(122);
plot(tau_hip_knee_limits(1,1:resolution),tau_hip_knee_limits(2,1:resolution),'r-',...
     tau_hip_knee_limits(1,resolution+1:2*resolution),tau_hip_knee_limits(2,resolution+1:2*resolution),'g-',...
     tau_hip_knee_limits(1,2*resolution+1:3*resolution),tau_hip_knee_limits(2,2*resolution+1:3*resolution),'b-',...
     tau_hip_knee_limits(1,3*resolution+1:4*resolution),tau_hip_knee_limits(2,3*resolution+1:4*resolution),'y-',...
     tau12_des,tau23_des,'mo',...
     tau12,tau23,'ko'); 
xlim([min([tau12_des,tau12,-2*max_motor_torque-padding]), max([tau12_des,tau12,2*max_motor_torque + padding])]);
ylim([min([tau23_des,tau23,-2*max_motor_torque-padding]), max([tau23_des,tau23,2*max_motor_torque + padding])]);
xlabel('tau12 (knee)'); ylabel('tau23 (hip)');
title('Hip/Knee Space');                    
                    
    









