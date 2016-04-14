function ground = make2DGroundProfile(seed,sectionLengths,numSegs,segSlopeDistr,maxDiff)
% INPUTS
% seed : integer number to make profiles reproducible.
% sectionLengths : [startLength,roughLength,endLength] in (m).
% numSegs : number of rough segments, where each segment consists of a flat
%           section and a sloped section.
% segSlopeDistr : [1 x 2] or [nSegs x 2] where each row determines the
%                 relative length of the sloped and flat sections, 
%                 normalized by sum of all elements in segSlopeDistr.
%
%                 E.g. numSegs = 10, segSlopeDistr = [2,1] means each 
%                 segment will contain 67% sloped and 33% flat terrain.
%
%                 E.g. numSegs = 2, segSlopeDistr = [2,1;3,4] means the
%                 rough section will be comprised of 
%                 [20% sloped, 10% flat, 30% sloped, 40% flat].
%
% OUTPUTS
% ground : struct 
% ground.x : x-values of height profile (1xM row vector)
% ground.ygnd : y-values, height of ground profile (1xM row vector)
% ground.normsx : x-values of norm profile (1xN row vector)
% ground.norms : xy-values of norm vector at normsx (2xN)
% ground.profile : xy-values of cross-section of ground, for animation
% ground.seed : same as input
% ground.sectionLengths : same as input
% ground.numSegs : same as input
% ground.segSlopeDistr : same as input
%
%% Code
ground.seed = seed;
ground.sectionLengths = sectionLengths;
ground.numSegs = numSegs;
ground.segSlopeDistr = segSlopeDistr;
ground.maxDiff = maxDiff;

% Set random number generator seed to make result reproducible
rng(seed,'twister'); 

if size(segSlopeDistr,1)<numSegs
   segSlopeDistr = repmat(segSlopeDistr,numSegs,1); 
end

% Ground height x-values
rough_x = segSlopeDistr';
rough_x = rough_x(:)';
rough_x = cumsum(rough_x);
rough_x = (rough_x/rough_x(end))*sectionLengths(2) + sectionLengths(1);
ground.x = [0,sectionLengths(1),rough_x,sum(sectionLengths)];

% Ground height y-values (interpolated linearly)
diff_y = (2*rand(1,numSegs)-1)*maxDiff;

[~,idx] = max(diff_y);        %set min/max to -/+ maxDiff
diff_y(idx) = maxDiff;
[~,idx] = min(diff_y);
diff_y(idx) = -maxDiff;

% idx = randperm(numSegs,2);      % set 2 random elements to -/+ maxDiff
% diff_y(idx(1)) = maxDiff;
% diff_y(idx(2)) = -maxDiff;

ygnd = zeros(1,2*numSegs);      
y = cumsum(diff_y);
ygnd(1:2:2*numSegs-1) = y;
ygnd(2:2:2*numSegs) = y;
ground.ygnd = [0,0,ygnd,ygnd(end)];

% Ground Norm x-values
ground.normsx = ground.x(1:end-1);

% Ground Norm vectors (interpolated flatly)
A = [diff(ground.x); diff(ground.ygnd); zeros(1,size(ground.x,2)-1)];
B = repmat([0; 0; -1],1,size(A,2));
C = cross(A,B);
C = C./repmat(sqrt(sum(C.^2,1)),3,1); %normalize
ground.norms = C;


% Ground Profile for animation
anim_depth = 0.1; %depth of animated ground
ground.profile = [ground.x,ground.x(end:-1:1);
                  ground.ygnd-anim_depth,ground.ygnd(end:-1:1)];

end





