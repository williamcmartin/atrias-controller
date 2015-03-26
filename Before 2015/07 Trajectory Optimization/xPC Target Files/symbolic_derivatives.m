%% leg length and leg angle
clear
syms t d l_v real
th = sym('th(t)');
al = sym('al(t)');
dth = diff(th, t);
dal = diff(al, t);

l = (d^2 + l_v^2 - 2*d*l_v*cos(th - al + pi/2))^(1/2);
dl = diff(l, t);
dl = simplify(dl)
ddl = diff(dl, t);
ddl = simplify(ddl)

phi = pi/2 - th + atan2(l_v*sin(al)-d*cos(th), d*sin(th)+l_v*cos(al));
y_hip = l_v*sin(al)-d*cos(th);
x_hip = d*sin(th)+l_v*cos(al);
dphi = -dth + ((x_hip*(l_v*dal*cos(al)+d*dth*sin(th)) - y_hip*(d*dth*cos(th)-l_v*dal*sin(al))) / x_hip^2) / ((y_hip / x_hip)^2 + 1);
dphi = simplify(dphi)

ddphi = diff(dphi, t);
ddphi = simplify(ddphi)


%% four bar segments
clear
syms t real
phi = sym('phi(t)');
l_leg = sym('l_leg(t)');
dphi = diff(phi, t);
dl_leg = diff(l_leg, t);

back  = phi + acos(l_leg);
front = phi - acos(l_leg);

dback  = dphi - dl_leg/sin((back-front)/2)
dfront = dphi + dl_leg/sin((back-front)/2)

ddback = simplify(diff(dback,t))
ddfront = simplify(diff(dfront,t))
