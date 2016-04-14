function rTrack = randomGroundProfile(seed,maxDiff)

startLength = 5;
roughLength = 20;
endLength = 75;
sectionLengths = [startLength,roughLength,endLength];
segSlopeDistr = [0.03, 0.97];
numSegs = 20;

ground = make2DGroundProfile(seed,sectionLengths,numSegs,segSlopeDistr,maxDiff);

meanDelTrunk = 2.0526; % [m] radius of base to ATRIAS torso
th_1m   = 1/meanDelTrunk;   % yaw for one segment 
                            % map 1[m] -> th_1m[rad]
                            
% !!! the values below should match the loaded ground profile
% plateL      = 1;        
% plate_del   = 0.03;
% !!!

v_plateX    = ground.x;
v_plateZ    = ground.ygnd;

v_plateX_new    = [v_plateX(1) .03 1 1.03 2 2.03 3 3.03 4 4.03 ... %first 5 segments are flat.
                   v_plateX(2:end-2)];
v_plateZ_new    = [v_plateZ(1) v_plateZ(1)*ones(1,9) ...
                   v_plateZ(2:end-2)];

% extend ground to 30m
v_plateX_new(end+(1:11)) = [25 25.03 26 26.03 27 27.03 28 28.03 29 29.03 30];
v_plateZ_new(end+(1:11)) = v_plateZ_new(end)*ones(1,11);

v_delX = diff(v_plateX_new);
v_delZ = diff(v_plateZ_new);
v_plateS_new = atan2(v_delZ,v_delX);    % !! -> to be precise... should consider boom length

v_plateYaw      = v_plateX_new(1,:)*th_1m;	% map 1m -> 30*pi/180rad

rTrack.v_plateYaw   = v_plateYaw;
rTrack.v_plateH     = v_plateZ_new;
rTrack.v_plateS     = v_plateS_new;



end