function [s,ds,th,dth,delta_theta,c]=ATRIAS2D_SS_s_Rigid(q,dq,theta_limits)
%
%% Defaults
if nargin < 3
    theta_limits = [pi/2-pi/8; pi/2+pi/8];
end
%

%% Compute and return s and th = theta
dim_q = length(q);
c=zeros(1,dim_q);
c(1:3)=[1.0 0.5 0.5];
th=3*pi/2-c*q; %check offset
dth=-c*dq;
delta_theta=theta_limits(2)-theta_limits(1);
s=(th-theta_limits(1))/delta_theta;
ds=dth/delta_theta;
%
return