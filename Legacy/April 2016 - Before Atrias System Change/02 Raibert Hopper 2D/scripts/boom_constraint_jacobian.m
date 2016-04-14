%% Variables
syms th phi real
syms l_star r d_b l th_mnt th_off positive
syms dth dphi dl real
q = [phi th l];
dq = [dphi dth dl];

%% xy constraint - left foot
x = l_star*cos(th-th_off) + (l*sin(phi+th-th_mnt)+r*cos(phi+th-th_mnt));
y = d_b + l_star*sin(th-th_off) - (l*cos(phi+th-th_mnt)-r*sin(phi+th-th_mnt));
Jqx = jacobian(x,q);
Jqy = jacobian(y,q);
dx = Jqx*dq';
dy = Jqy*dq';
A = [jacobian(dx,dq); jacobian(dy,dq)];
J_left = simplify(inv(A(:,1:2))*-A(:,3));

%% xy constraint - right foot
x = l_star*cos(th-th_off) - (l*sin(phi-th+th_mnt)+r*cos(phi-th+th_mnt));
y = d_b + l_star*sin(th-th_off) - (l*cos(phi-th+th_mnt)-r*sin(phi-th+th_mnt));
Jqx = jacobian(x,q);
Jqy = jacobian(y,q);
dx = Jqx*dq';
dy = Jqy*dq';
A = [jacobian(dx,dq); jacobian(dy,dq)];
J_right = simplify(inv(A(:,1:2))*-A(:,3));

% l = l_boom, d1 = x_boom_mount, d2 = y_boom_mount
% l_star = sqrt(l^2+d1^2+d2^2-2*l*sqrt(d1^2+d2^2)*cos(pi-(boom_mount_angle + asin(d2/sqrt(d1^2+d2^2)))))

%% Solve for J = r
phi_soln_r = solve(J_right(1) == -r, phi);
phi_soln_l = solve(J_left(1) == r, phi);

