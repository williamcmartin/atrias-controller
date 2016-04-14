clear all; clc; close all;
%%% the code works for rough ground used for 3DNM ...
% plateX = [0    5.0000    5.9700    6.0000    6.9700    7.0000 ...
%           23.9700   24.0000   25.0000  100.0000];

load('terrain_rough_10');
meanDelTrunk = 2.0526; % [m]
th_1m   = 1/meanDelTrunk;    % map 1[m] -> th_1m[rad]

% !!! the values below should match the loaded ground profile
plateL      = 1;        
plate_del   = 0.03;
% !!!

v_plateX    = ground.v_plateXZ(1,:);
v_plateZ    = ground.v_plateXZ(2,:);

v_plateX_new    = [v_plateX(1) .97 1 1.97 2 2.97 3 3.97 4 4.97 v_plateX(2:end-2)];
v_plateZ_new    = [v_plateZ(1) v_plateZ(1)*ones(1,9) v_plateZ(2:end-2)];

% extend ground to 30m
v_plateX_new(end+(1:12)) = [24.97 25 25.97 26 26.97 27 27.97 28 28.97 29 29.97 30];
v_plateZ_new(end+(1:12)) = v_plateZ_new(end)*ones(1,12);

v_delX = diff(v_plateX_new);
v_delZ = diff(v_plateZ_new);
v_plateS_new = atan2(v_delZ,v_delX);    % !! -> to be precise... should consider boom length

v_plateYaw      = v_plateX_new(1,:)*th_1m;	% map 1m -> 30*pi/180rad

rTrack.v_plateYaw   = v_plateYaw;
rTrack.v_plateH     = v_plateZ_new;
rTrack.v_plateS     = v_plateS_new;

save('terrain_rough_10_rTrack', 'rTrack');