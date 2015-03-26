%% Calculate lateral applied to leg while constrained by boom.

% Constants
l_star = 1.978;
r = 0.2;
k_sea = [4255.0 4525.3 4372.1 4322.4];
m = 18;
g = 9.803;
th_mnt = 7.2824 * pi/180;
th_off = 0.174439;
boom_height = 0.99;
% Leg lengths
l_leg_r = cos((pos.data(:,3)-pos.data(:,1))/2);
l_leg_l = cos((pos.data(:,7)-pos.data(:,5))/2);
dl_leg_r = -(pos.data(:,16)-pos.data(:,14))/2.*sin((pos.data(:,3)-pos.data(:,1))/2);
dl_leg_l = -(pos.data(:,20)-pos.data(:,18))/2.*sin((pos.data(:,7)-pos.data(:,5))/2);
% Leg forces
spring_deflections = [pos.data(:,4)-pos.data(:,3) pos.data(:,2)-pos.data(:,1) pos.data(:,8)-pos.data(:,7) pos.data(:,6)-pos.data(:,5)];
spring_forces = bsxfun(@times, spring_deflections, k_sea);
F_leg_r = (spring_forces(:,2)-spring_forces(:,1)) ./ sin((pos.data(:,3)-pos.data(:,1))/2);
F_leg_l = (spring_forces(:,4)-spring_forces(:,3)) ./ sin((pos.data(:,7)-pos.data(:,5))/2);
r_contact = F_leg_r > 400;
l_contact = F_leg_l > 400;
% Lateral angles
th = pos.data(:,11);
dth = pos.data(:,24);
phi_r = pos.data(:,31);
dphi_r = pos.data(:,22);
phi_l = pos.data(:,32);
dphi_l = pos.data(:,23);
% Lateral torques
tau_m_r = max(min(torq.data(:,3),10),-10);
tau_m_l = max(min(torq.data(:,6),10),-10);
tau_g_r = 35;%m*g*r*cos(phi_r);
tau_g_l = 35;%m*g*r*cos(phi_l);
% Jacobians
J_l_phi =  -(l_leg_l + l_star*sin(phi_l + th_off - th_mnt)) ./ (l_leg_l.*l_star.*cos(phi_l + th_off - th_mnt) - l_star*r*sin(phi_l + th_off - th_mnt));
J_l_theta = l_leg_l                                         ./ (l_leg_l.*l_star.*cos(phi_l + th_off - th_mnt) - l_star*r*sin(phi_l + th_off - th_mnt));
J_r_phi =  -(l_leg_r - l_star*sin(phi_r - th_off + th_mnt)) ./ (l_leg_r.*l_star.*cos(phi_r - th_off + th_mnt) - l_star*r*sin(phi_r - th_off + th_mnt));
J_r_theta = l_leg_r                                         ./ (l_leg_r.*l_star.*cos(phi_r - th_off + th_mnt) - l_star*r*sin(phi_r - th_off + th_mnt));
% Lateral force
F_orthogonal_r = -(F_leg_r.*(J_r_phi + r) -  tau_m_r + tau_g_r) ./ l_leg_r;
F_orthogonal_l = (F_leg_l.*(J_l_phi - r) -  tau_m_l + tau_g_l) ./ l_leg_l;
t = pos.data(:,end);
figure('Name', 'Orthogonal leg forces on boom');
hold on;
t_select = t>20 & t <100;
area(t(t_select), double(r_contact(t_select))*500,'LineStyle','none','FaceColor',0.9*[1 1 0.2]);
area(t(t_select), -double(r_contact(t_select))*500,'LineStyle','none','FaceColor',0.9*[1 1 0.2]);
area(t(t_select), double(l_contact(t_select))*500,'LineStyle','none','FaceColor',0.9*[0.2 1 1]);
area(t(t_select), -double(l_contact(t_select))*500,'LineStyle','none','FaceColor',0.9*[0.2 1 1]);
plot(t(t_select),F_orthogonal_r(t_select));
plot(t(t_select),F_orthogonal_l(t_select));


%% Predicted foot positions
x_foot_l = l_star*cos(th-th_off) + (l_leg_l.*sin(phi_l+th-th_mnt) + r.*cos(phi_l+th-th_mnt));
y_foot_l = boom_height + l_star*sin(th-th_off) - (l_leg_l.*cos(phi_l+th-th_mnt) - r.*sin(phi_l+th-th_mnt));
x_foot_r = l_star*cos(th-th_off) - (l_leg_r.*sin(phi_r-th+th_mnt) + r.*cos(phi_r-th+th_mnt));
y_foot_r = boom_height + l_star*sin(th-th_off) - (l_leg_r.*cos(phi_r-th+th_mnt) - r.*sin(phi_r-th+th_mnt));
figure('Name', 'X Foot Positions');
hold on;
area(t(t_select), double(r_contact(t_select))*10,'LineStyle','none','FaceColor',0.9*[1 1 0.2]);
area(t(t_select), -double(r_contact(t_select))*10,'LineStyle','none','FaceColor',0.9*[1 1 0.2]);
area(t(t_select), double(l_contact(t_select))*10,'LineStyle','none','FaceColor',0.9*[0.2 1 1]);
area(t(t_select), -double(l_contact(t_select))*10,'LineStyle','none','FaceColor',0.9*[0.2 1 1]);
plot(t(t_select),x_foot_r(t_select));
plot(t(t_select),x_foot_l(t_select));
figure('Name', 'Y Foot Positions');
hold on;
area(t(t_select), double(r_contact(t_select))*1,'LineStyle','none','FaceColor',0.9*[1 1 0.2]);
area(t(t_select), -double(r_contact(t_select))*1,'LineStyle','none','FaceColor',0.9*[1 1 0.2]);
area(t(t_select), double(l_contact(t_select))*1,'LineStyle','none','FaceColor',0.9*[0.2 1 1]);
area(t(t_select), -double(l_contact(t_select))*1,'LineStyle','none','FaceColor',0.9*[0.2 1 1]);
plot(t(t_select),y_foot_r(t_select));
plot(t(t_select),y_foot_l(t_select));



%% Velocity mapping
figure('Name','Jacobian velocity mapping (Right)')
hold on;
area(t(t_select), double(r_contact(t_select))*4,'LineStyle','none','FaceColor',0.9*[1 1 1]);
area(t(t_select), -double(r_contact(t_select))*4,'LineStyle','none','FaceColor',0.9*[1 1 1]);
plot(t(t_select),J_r_phi(t_select).*dl_leg_r(t_select));
plot(t(t_select),dphi_r(t_select));
%plot(t(t_select),J_r_theta(t_select).*dl_leg_r(t_select));
%plot(t(t_select),dth(t_select))
figure('Name','Jacobian velocity mapping (Left)')
hold on;
area(t(t_select), double(l_contact(t_select))*4,'LineStyle','none','FaceColor',0.9*[1 1 1]);
area(t(t_select), -double(l_contact(t_select))*4,'LineStyle','none','FaceColor',0.9*[1 1 1]);
plot(t(t_select),J_l_phi(t_select).*dl_leg_l(t_select));
plot(t(t_select),dphi_l(t_select));
% dphi_l_data = timeseries(dphi_l , t);
% dphi_l_filtered = idealfilter(dphi_l_data,[0 60], 'pass');
% plot(t,dphi_l_filtered.Data)
%plot(t(t_select),J_l_theta(t_select).*dl_leg_l(t_select));
%plot(t(t_select),dth(t_select))

% %% Option 1
% % Landing phi for J = r (removes axial contribution)
% phi_star_r = atan(r*l0_virtual/(r^2 - 1)) - th;% + (pos.data(:,11) - boom_mount_angle);
% phi_star_l = atan(r*l0_virtual/(r^2 - 1)) + th;% - (pos.data(:,11) - boom_mount_angle);
% 
% %% Option 2
% % Landing phi to minimize J (tau_m must counteract F_leg*r)
% phi_star_l_2 = atan2(r, l_leg_l) + th;
% phi_star_r_2 = atan2(r, l_leg_r) - th;




