%
% setOtherPar.m
%   set parameters (other than control parameters)
% 
% given: paramIC
%
% define:
%   initial conditions
%   simulation environments
%
% by Seungmoon Song
% Jan 2014
%


% ------------------
% initial conditions
% ------------------

% Manual Tuning
v0                  = paramIC(1);               % forward velocity (2.5)
theta0              = paramIC(2)      *pi/180; %[rad] (See FullAtrias_SetMechVars)
Lalpha0             = paramIC(3)      *pi/180; %[rad]  
LLength0            = paramIC(4);
Ralpha0             = paramIC(5)      *pi/180; %[rad]
RLength0            = paramIC(6);

% % From previous optimizations
% v0                  = paramIC(1)      *1.25;
% theta0              = paramIC(2)      *3*pi/180; %[rad] 
% Lalpha0             = paramIC(3)      *80*pi/180; %[rad]  
% LLength0            = paramIC(4)      *0.9;
% Ralpha0             = paramIC(5)      *100*pi/180; %[rad]
% RLength0            = paramIC(6)      *0.9;

% % Static Double Support
% splay_ang = 50;
% leg_splay = 50;
% v0                  = 0;
% theta0              = 0*pi/180; %[rad] 
% Lalpha0             = (90 - leg_splay/2)*pi/180; %[rad]  
% LLength0            = cosd(splay_ang/2);
% Ralpha0             = (90 + leg_splay/2)*pi/180; %[rad]
% RLength0            = cosd(splay_ang/2);

Lthigh0             = Lalpha0 - theta0 - acos(LLength0) + pi/2;
Lshin0              = Lalpha0 - theta0 + acos(LLength0) + pi/2;
Rthigh0             = Ralpha0 - theta0 - acos(RLength0) + pi/2;
Rshin0              = Ralpha0 - theta0 + acos(RLength0) + pi/2;
% hipHeight0          = LLength0*sin(Lalpha0);
globalYaw0          = 30*pi/180; % change based on other models!!

thigh_initial_l     = Lthigh0;
shin_initial_l      = Lshin0;
thigh_initial_r     = Rthigh0;
shin_initial_r      = Rshin0;


% Joint ICs (Virtual Leg)
l_v = D12_T;
Lv120 = 2*asin((l_seg/l_v)*sin((pi-Lshin0+Lthigh0)/2));
Lv230 = Lthigh0 + (Lv120-(pi-Lshin0+Lthigh0))/2;
Rv120 = 2*asin((l_seg/l_v)*sin((pi-Rshin0+Rthigh0)/2));
Rv230 = Rthigh0 + (Rv120-(pi-Rshin0+Rthigh0))/2;

init_a_tgt = 70*pi/180; %[rad] Initial foot placement target


%% Initial parameters
% -------------------
v_thigh_initial_r =  pi/2;
v_shin_initial_r =  pi/2;
initial_boom_yaw = globalYaw0;
initial_boom_pitch = theta0; %(theta)
% initial_com_height = 1.05; %(1.2248)
initial_com_height = 1; %(1.2248)
initial_boom_roll = asin((initial_com_height + boom_mount_to_com + boom_mount_to_center*tan(pitch_mount_angle) - (base_12(2) + yshaft_12(2))) / (l_boom + boom_mount_to_center_diagonal));
initial_winch_angle = -12 * pi/180;
initial_hip_roll = 0*pi/180;
initial_boom_yaw_velocity = v0 / ((l_boom+boom_mount_to_center_diagonal)*cos(initial_boom_roll));


% % ---------------
% % ground geometry
% % ---------------
% 
% v_plateYaw      = rTrack.v_plateYaw;
% v_plateH    	= rTrack.v_plateH;
% v_plateS        = [rTrack.v_plateS 0];              % slope (angle) of plates [rad]


% ----------------
% simulation setup
% ----------------

ts_data     = 0.01;
ts_anim     = 0.01;
sim_t = 60;