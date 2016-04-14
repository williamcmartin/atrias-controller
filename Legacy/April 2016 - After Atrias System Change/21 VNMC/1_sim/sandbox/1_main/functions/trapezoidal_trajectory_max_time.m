% Optimal trapezoidal velocity trajectory
function [tr, th] = ...
    TrapezoidalTrajectoryTimings(t_trajectory, max_acceleration,...
    max_velocity, target_distance)

tt = t_trajectory;
a = max_acceleration;
v = max_velocity;
ls = target_distance;

% possible solutions (removed complex values using abs())
tr_possible = [                   tt/2;
                                     0;
                          abs(ls/a)^(1/2);
                                     0;
 tt/2 - abs(-(- a*tt^2 + 4*ls)/a)^(1/2)/2;
                                     0;
                                   v/a;
                         -abs(ls/a)^(1/2);
                                   v/a;
                   -(abs(4*ls)/a)^(1/2)/2;
                    (abs(4*ls)/a)^(1/2)/2;
                       abs(-a*ls)^(1/2)/a;
                      -abs(-a*ls)^(1/2)/a;
 tt/2 + abs(-(- a*tt^2 + 4*ls)/a)^(1/2)/2;
                                   v/a];

th_possible = [              0;
                             0;
                             0;
                             0;
  abs(-(- a*tt^2 + 4*ls)/a)^(1/2);
                            tt;
                             0;
                             0;
          (- v^2 + a*ls)/(a*v);
                             0;
                             0;
          -(2*abs(-a*ls)^(1/2))/a;
           (2*abs(-a*ls)^(1/2))/a;
 -abs(-(- a*tt^2 + 4*ls)/a)^(1/2);
               -(2*v - a*tt)/a];


% numerical precision factor 
thr = 100*eps; % (without this, solution can give suboptimal/unexpected results)

% check constraints
c1 = -a.*tr_possible.^2-a.*th_possible.*tr_possible+ls >= -thr;
c2 = -2*tr_possible-th_possible+tt >= -thr;
c3 = -a*tr_possible+v >= -thr;
c4 = tr_possible >= -thr;
c5 = th_possible >= -thr;
constraints = c1 & c2 & c3 & c4 & c5;

if ~all(constraints == 0)
    % objective function to minimize (f = (ls-d)^2)
    f = (a.*tr_possible.^2 + a.*th_possible.*tr_possible - ls).^2;
    satisfied = find(constraints);
    total_times = 2*tr_possible + th_possible;
    [M,~] = min(f(satisfied));
    I = satisfied(f(satisfied)-M <= thr);
    [~, I2] = max(total_times(I));
    
    tr = tr_possible(I(I2));
    th = th_possible(I(I2));
%     disp(['t_ramp = ',num2str(tr),' | t_hold = ',num2str(th)]);
        
    if isempty(tr) || isempty(th), tr = 0; th = 0; end
else
    tr = 0;
    th = 0;
end




