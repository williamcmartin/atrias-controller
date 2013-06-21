function [s,ds,theta,dtheta,theta_range,c,dsdq] = ATRIAS2D_SS_s(q,dq,theta_limits,stance_leg)
%
% Files works with the full dynamics and the zero dynamics. Just replace q
% with z and dq with dz
%
% Compute and return s and th = theta


% q1 = BoomYaw
% q2 = BoomRoll
% q3 = BoomPitch

% q4 = BackJointR 
% q5 = FrontJointR
% q6 = BackGearR
% q7 = FrontGearR
% q8 = BackJointL 
% q9 = FrontJointL
% q10 = BackGearL
% q11 = FrontGearL

% Back/Front: back/front half of leg (in human walking direction)
% R/L: right/left leg (in human walking direction)
% Gear/Joint: gear output angle (then series spring) vs joint angle)
% Lat: lateral motors

% initalize control selection vector
c = zeros(1, length(q));

% assign c vector
if stance_leg==0 
    % right stance
    c(3:5) = [1 0.5 0.5];

else
    % left stance
    c([3 8:9]) = [1 0.5 0.5];
end

% angle of virtual leg (similar to eq 8 in Ref1 except that boom pitch
% is taken into account as leg joint angles are measured relative to trunk
theta = 3*pi/2 - c*q;
% note: this is a matrix multiplication equivalent to 
%       theta = 1*BoomPitch + 0.5*BackJoint + 0.5*FrontJoint
%       plus a correction 3*pi/2 due to coordinate definition

% virtual leg velocity
dtheta = -c*dq;

% leg angular range in stance as defined by upper (2) and lower limit (1) 
theta_range = theta_limits(2)-theta_limits(1);
% note theta_limits are provided in file data.mat


% define the normalized independent variable (eq 17 in Ref1) and its velocity
s  = (theta-theta_limits(1)) / theta_range;
ds = dtheta/theta_range;

% derivative of s with respect to coordinates q
dsdq = -c / theta_range;
% note: follows from definitation of s, c and theta:
%       dsdq = dsdtheta * dthetadq
% note further: this is a Jacobian mapping from virtual leg angle to q

return