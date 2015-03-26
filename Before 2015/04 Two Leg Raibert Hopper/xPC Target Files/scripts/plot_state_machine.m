figure('Name','State Machine');
clf;
hold on;
plot(t,cont.data(:,1)); % flight
plot(t,cont.data(:,7),'r'); % thrust 
plot(t,cont.data(:,8),'g'); % posture
plot(t,cont.data(:,9),'m'); % placement
legend({'flight';'thrust';'posture';'placement'})