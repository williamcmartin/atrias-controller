function [u,y,dy] = ATRIAS_hip_controller_v2(q, dq, q3_des, kp, kd)
%%eml


% q vector 13 by 1
% dq vector 13 by 1
% kp vector 1 by 1
% kd vector 1 by 1

% Add correction to right side (first), subtract from left (second)

q1R = q(6); 
q2R = q(7);
q3R = q(8);
q1L = q(11);
q2L = q(12);
q3L = q(13);


dq1R = dq(6);
dq2R = dq(7);
dq3R = dq(8);
dq1L = dq(11);
dq2L = dq(12);
dq3L = dq(13);

z = [q3R;q3L];
dz = [dq3R;dq3L];
y = (z-q3_des);
dy = dz;

Kp = zeros(2,2);
Kp(1,1)= kp;
Kp(2,2)= kp;

Kd = zeros(2,2);
Kd(1,1)= kd;
Kd(2,2)= kd;

u_um = -Kp*y-Kd*dy;

%transform to OSU coordinates
u = u_um;
u(1) = -u(1);

end

