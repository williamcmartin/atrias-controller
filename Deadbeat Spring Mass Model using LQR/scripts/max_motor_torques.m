%% Compute relationship between virtual spring constant, system energy, and max motor torques

% system params
max_allowed_torque = 500;
m = 66;
g_real = 9.803;
g = g_real;
d = 0.19;
l0_virtual = 1.09;

% search space
k_virtual = 1000:100:30000;
delta_y = 0.01:0.001:0.1;
motor_torque = zeros(length(k_virtual),length(delta_y));
spring_deflection = zeros(length(k_virtual),length(delta_y));
% compute max motor torques
for i=1:length(delta_y)
    % Spring at max compression when all of potential is elastic energy
    a = 0.5.*k_virtual;
    b = -m*g;
    c = -m*g*delta_y(i);
    delta_l_virtual = (-b + sqrt(b^2 - 4.*a*c))./(2*a);
    spring_deflection(:,i) = delta_l_virtual;
    F_l = k_virtual .* delta_l_virtual; 

    % compute leg geometry
    l_leg = (l0_virtual - d) - delta_l_virtual; % assume torso is level, leg at 180 degrees
    splay = 2*acos(l_leg);
    w = sin(splay/2);
    motor_torque(:,i) = (F_l .* w)/2;
end

% plot relationship
figure(100)
clf;
hold on;
surf(delta_y, k_virtual, motor_torque,'EdgeColor','none','LineStyle','none','FaceLighting','phong')
xlabel('Ground Clearance (m)');
ylabel('Spring Stiffness (N/m)');
zlabel('Peak Motor Torque (Nm)');
% plot plane of max allowed torque
patch([min(delta_y) max(delta_y) max(delta_y) min(delta_y)]',[min(k_virtual) min(k_virtual)  max(k_virtual) max(k_virtual)]',max_allowed_torque*ones(4,1),'b','EdgeColor','none','LineStyle','none');
grid on;
alpha(0.3);
hold off;
% plot contour at max allowed torque
figure(101);
contours = max_allowed_torque*[0.75 0.8 0.85 0.9 0.95 1.00];
contour(delta_y, k_virtual, motor_torque, 10);
%title(sprintf('Spring stiffness and compression at max torque = %f',max_allowed_torque));
xlabel('Ground Clearance (m)');
ylabel('Spring Stiffness (kN/m)');

figure(102);
contour(delta_y, k_virtual, spring_deflection);
xlabel('Ground Clearance (m)');
ylabel('Spring Stiffness (kN/m)');

%% Peak torque as a function
syms m g k y l0 real
tau_m = 0.5*(m*g + (m^2*g^2 + 2*k*m*g*y)^0.5)*sin(acos(l0 - (m*g + (m^2*g^2 + 2*k*m*g*y)^0.5)/k));

