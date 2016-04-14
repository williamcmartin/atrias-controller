clear all; clc; close all;

meanDelTrunk = 2.0526; % [m]
th_1m   = 1/meanDelTrunk;    % map 1[m] -> th_1m[rad]

% !!! the values below should match the loaded ground profile
plateL      = 1;        
plate_del   = 0.03;
% !!!

v_plateX_new    = sort([0:1:30, .97:1:29.97]);
v_plateZ_new    = zeros(1,length(v_plateX_new));
v_plateS_new    = zeros(1,length(v_plateX_new)-1);

v_plateYaw      = v_plateX_new(1,:)*th_1m;	% map 1m -> 30*pi/180rad

rTrack.v_plateYaw   = v_plateYaw;
rTrack.v_plateH     = v_plateZ_new;
rTrack.v_plateS     = v_plateS_new;

save('terrain_flat_rTrack', 'rTrack');