figure('Name','State Machine');
clf;
hold on;
plot(t,cont.data(:,5)); % flight
plot(t,cont.data(:,6),'r'); % thrust 
plot(t,cont.data(:,7),'g'); % posture
plot(t,cont.data(:,8),'m'); % placement
legend({'flight';'thrust';'posture';'placement'})