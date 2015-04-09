%% Retrieve logged data from target machine
% Attach to the target computer file system.
f=SimulinkRealTime.fileSystem;

% Open the file, read the data, close the file.
h=f.fopen('E:\POS_001.DAT');
pos_data=f.fread(h);
f.fclose(h);
h=f.fopen('E:\TORQ_001.DAT');
torq_data=f.fread(h);
f.fclose(h);
h=f.fopen('E:\SUPR_001.DAT');
supr_data=f.fread(h);
f.fclose(h);
h=f.fopen('E:\SWITCHES_001.DAT');
switch_data=f.fread(h);
f.fclose(h);
h=f.fopen('E:\VIRT_KIN_001.DAT');
virtual_kinematics=f.fread(h);
f.fclose(h);
h=f.fopen('E:\MODEL_TORQ_001.DAT');
model_torques=f.fread(h);
f.fclose(h);
h=f.fopen('E:\MUSCLE_001.DAT');
muscle_data=f.fread(h);
f.fclose(h);

% Unpack the data.
pos = SimulinkRealTime.utils.getFileScopeData(pos_data);
torq1 = SimulinkRealTime.utils.getFileScopeData(torq_data);
supr = SimulinkRealTime.utils.getFileScopeData(supr_data);
swch = SimulinkRealTime.utils.getFileScopeData(switch_data);
virt = SimulinkRealTime.utils.getFileScopeData(virtual_kinematics);
torq2 = SimulinkRealTime.utils.getFileScopeData(model_torques);
musc = SimulinkRealTime.utils.getFileScopeData(muscle_data);

save(sprintf('data/%s',datestr(clock,'mmmm_dd_yyyy HH_MM_SS_AM')),...
    'pos','torq1','supr','swch','virt','torq2','musc');

%% Plot data in workspace
clf; close all;
t = pos.data(:,end);

% Plot position data
% 1-13: smoothed encoder data
% 14-26: encoder velocities

%% Leg Segment Positions (Smoothed)
plot_fscope('Leg Position',{t,t}, {pos.data(:,1:4)*180/pi,pos.data(:,5:8)*180/pi},...
    {{'qFront';'qFrontGear';'qBack';'qBackGear'},{'qFront';'qFrontGear';'qBack';'qBackGear'}},...
    {'Right Leg Position','Left Leg Position'},{'Time (sec)','Time (sec)'},{'Angle (degrees)','Angle (degrees)'},{[0 350],[0 350]},2,[]);

%% Leg Segment Velocities
plot_fscope('Leg Velocity',{t,t}, {pos.data(:,14:17)*180/pi, pos.data(:,18:21)*180/pi},...
    {{'dqFront';'dqFrontGear';'dqBack';'dqBackGear'},{'dqFront';'dqFrontGear';'dqBack';'dqBackGear'}},...
    {'Right Leg Velocity','Left Leg Velocity'},{'Time (sec)','Time (sec)'},...
    {'Velocity (degrees / sec)','Velocity (degrees / sec)'},{[-100, 100],[-100, 100]},2,[]);

%% Virtual Leg Length
right_leg_length = cos((pos.data(:,3)-pos.data(:,1))/2);
left_leg_length = cos((pos.data(:,7)-pos.data(:,5))/2);
right_leg_length_using_motors = cos((pos.data(:,4)-pos.data(:,2))/2);
left_leg_length_using_motors = cos((pos.data(:,8)-pos.data(:,6))/2);
plot_fscope('Virtual Leg Length',{t,t}, {[right_leg_length right_leg_length_using_motors], [left_leg_length left_leg_length_using_motors]},...
    {{'Measured','Using Motor Position'},{'Measured','Using Motor Position'}},...
    {'Right Leg Length','Left Leg Length'},{'Time (sec)','Time (sec)'},...
    {'Length (m)','Length (m)'},{[0, 1],[0, 1]},2,[]);

%% Virtual Leg Angle (SMM)
right_leg_angle = (pos.data(:,3)+pos.data(:,1))/2*180/pi;
left_leg_angle = (pos.data(:,7)+pos.data(:,5))/2*180/pi;
plot_fscope('Virtual Leg Angle',{t,t}, {right_leg_angle, left_leg_angle},...
    {{'Measured'},{'Measured'}},...
    {'Right Leg Angle','Left Leg Angle'},{'Time (sec)','Time (sec)'},...
    {'Angle (degrees)','Angle (degrees)'},{[90, 270],[90, 270]},2,[]);


%% Virtual Joint Angles
virtual_knee_angles = [virt.data(:,11),virt.data(:,9)]*180/pi; %[R L]
virtual_hip_angles = [virt.data(:,10),virt.data(:,8)]*180/pi;  
virtual_knee_angles_desired = [virt.data(:,15),virt.data(:,13)]*180/pi; %[R L]
virtual_hip_angles_desired = [virt.data(:,14),virt.data(:,12)]*180/pi; %[R L]  
plot_fscope('Virtual Joint Angles',{t,t,t,t},...
            {[virtual_knee_angles,virtual_knee_angles_desired],[virtual_hip_angles,virtual_hip_angles_desired]},...
            {{'Rphi12','Lphi12','Rphi12_des','Lphi12_des'},{'Rphi23','Lphi23','Rphi23_des','Lphi23_des'}},...
            {'Virtual Knee Angles','Virtual Hip Angles'},{'Time (sec)','Time (sec)'},...
            {'Angle (deg)','Angle (deg'},{[0 190],[135 225]},2,[]);

%% Torso pitch
torso_pitch = pos.data(:,13)*180/pi;
torso_pitch_velocity = pos.data(:,26)*180/pi;
plot_fscope('Torso Pitch',{t}, {[torso_pitch, torso_pitch_velocity]},{{'Pitch','Velocity'}},...
    {'Torso Pitch'},{'Time (sec)'},{'Angle (degrees)'},{[-30 30]},1,[]);

%% Lateral Positions
boom_roll = pos.data(:,11);
plot_fscope('Lateral Position',{t}, {[pos.data(:,31:32)*180/pi]},{{'Right Measured';'Left Measured'}},...
    {'Lateral Leg Angles'},{'Time (sec)'},{'Angle (degrees)'},{[-30 30]},1,[]);



%% Plot torque data
% 1-6: commanded motor torques
% 7-12: desired output torques

% contacts
contact_right_left = {100000*(virt.data(:,20)), 100000*(virt.data(:,21))};
contact_all = {100000*(virt.data(:,20)|virt.data(:,21)), 100000*(virt.data(:,20)|virt.data(:,21))};
% spring deflections
deflections = [pos.data(:,4)-pos.data(:,3) pos.data(:,2)-pos.data(:,1) pos.data(:,8)-pos.data(:,7) pos.data(:,6)-pos.data(:,5)];
% SEA torques desired vs measured
spring_forces = bsxfun(@times, deflections, k_sea);
desired_forces = [torq1.data(:,7:8) torq1.data(:,10:11)];
plot_fscope('Leg Torques',{t,t}, {[torq1.data(:,7:8) spring_forces(:,1:2)],[torq1.data(:,10:11) spring_forces(:,3:4)]}, ...
    {{'Contact','Back Desired','Front Desired','Back Measured','Front Measured'},{'Contact','Back Desired','Front Desired','Back Measured','Front Measured'}},...
    {'Right Leg Torques','Left Leg Torques'}, {'Time (sec)','Time (sec)'}, {'Torque (Nm)','Torque (Nm)'}, {[-400 400],[-400 400]}, 2, contact_right_left);

%% Virtual hip/knee torques (desired vs measured)
hip_knee_torques = torq2.data(:,17:20);
hip_knee_desired_torques = torq2.data(:,13:16);
plot_fscope('Virtual Hip/Knee Torques',{t,t,t,t}, {[hip_knee_desired_torques(:,1) hip_knee_torques(:,1)],[hip_knee_desired_torques(:,2) hip_knee_torques(:,2)],...
                                               [hip_knee_desired_torques(:,3) hip_knee_torques(:,3)],[hip_knee_desired_torques(:,4) hip_knee_torques(:,4)]}, ...
    {{'Contact','RKnee Desired','RKnee Measured'},{'Contact','RHip Desired','RHip Measured'},...
     {'Contact','LKnee Desired','LKnee Measured'},{'Contact','LHip Desired','LHip Measured'}},...
    {'R Virtual Knee Torques','R Virtual Hip Torques','L Virtual Knee Torques','L Virtual Hip Torques'}, ...
    {'Time (sec)','Time (sec)','Time (sec)','Time (sec)'}, {'Torque (Nm)','Torque (Nm)','Torque (Nm)','Torque (Nm)'},...
    {[-400 400],[-400 400],[-400 400],[-400 400]}, 4, {contact_right_left{1},contact_right_left{1},contact_right_left{2},contact_right_left{2}});

%% Commanded motor torques
cmd_trq = torq2.data(:,9:12);
plot_fscope('Commanded Motor Torques',{t,t}, {cmd_trq(:,1:2),cmd_trq(:,3:4)}, ...
    {{'Back Commanded','Front Commanded'},{'Back Commanded','Front Commanded'}},...
    {'Right Leg Torques','Left Leg Torques'}, {'Time (sec)','Time (sec)'}, {'Torque (Nm)','Torque (Nm)'}, {[-400 400],[-400 400]}, 2, []);

%% Commanded lateral motor torques
lateral_torque_commands = [torq1.data(:,3) torq1.data(:,6)];
plot_fscope('Lateral Torques',{t}, {lateral_torque_commands}, ...
    {{'Right Commanded','Left Commanded'}},...
    {'Lateral Torques'}, {'Time (sec)'}, {'Torque (Nm)'}, {[-400 400]}, 1, []);

%% Leg force
    right_leg_force_measured = (spring_forces(:,2)-spring_forces(:,1)) ./ sin((pos.data(:,3)-pos.data(:,1))/2);
    right_leg_force_desired = (torq1.data(:,8)-torq1.data(:,7)) ./ sin((pos.data(:,3)-pos.data(:,1))/2);
    left_leg_force_measured = (spring_forces(:,4)-spring_forces(:,3)) ./ sin((pos.data(:,7)-pos.data(:,5))/2);
    left_leg_force_desired = (torq1.data(:,11)-torq1.data(:,10)) ./ sin((pos.data(:,7)-pos.data(:,5))/2);
plot_fscope('Leg Forces',{t,t}, {[right_leg_force_measured right_leg_force_desired], [left_leg_force_measured left_leg_force_desired]}, ...
    {{'Contact','Measured','Desired'},{'Contact','Measured','Desired'}},...
    {'Right Leg Force','Left Leg Force'}, {'Time (sec)','Time (sec)'}, {'Force (N)','Force (N)'}, {[-20 1400],[-20 1400]}, 2, contact_right_left);

%% Muscle Torque Contributions
R_hip_nmm_torques = [-musc.data(:,7).*musc.data(:,2), musc.data(:,14).*musc.data(:,9),...
                     musc.data(:,21).*musc.data(:,16), -musc.data(:,29).*musc.data(:,24)];
L_hip_nmm_torques = [-musc.data(:,44+7).*musc.data(:,44+2), musc.data(:,44+14).*musc.data(:,44+9),...
                     musc.data(:,44+21).*musc.data(:,44+16), -musc.data(:,44+29).*musc.data(:,44+24)];
R_knee_nmm_torques = [-musc.data(:,22).*musc.data(:,16), musc.data(:,30).*musc.data(:,24),...
                     musc.data(:,37).*musc.data(:,32), -musc.data(:,44).*musc.data(:,39)];
L_knee_nmm_torques = [-musc.data(:,44+22).*musc.data(:,44+16), musc.data(:,44+30).*musc.data(:,44+24),...
                     musc.data(:,44+37).*musc.data(:,44+32), -musc.data(:,44+44).*musc.data(:,44+39)];
plot_fscope('Muscle Torque Contributions',{t,t,t,t},{R_hip_nmm_torques,L_hip_nmm_torques,R_knee_nmm_torques,L_knee_nmm_torques},...
    {{'HFL','GLU','HAM','RF'},{'HFL','GLU','HAM','RF'},{'HAM','RF','VAS','BFSH'},{'HAM','RF','VAS','BFSH'}},...
    {'R Hip Muscle Torques','L Hip Muscle Torques','R Knee Muscle Torques','L Knee Muscle Torques'},...
    {'Time (sec)','Time (sec)','Time (sec)','Time (sec)'},{'(Nm)','(Nm)','(Nm)','(Nm)'},...
    {[-200 200],[-200 200],[-200 200],[-200 200]},4,[]);

%% Muscle Lengths (Lce)







