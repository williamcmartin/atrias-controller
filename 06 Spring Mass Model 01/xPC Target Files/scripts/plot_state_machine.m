figure('Name','State Machine');
clf;
hold on;
plot(t,cont.data(:,1)); % flight
plot(t,cont.data(:,13),'r'); % thrust 
plot(t,cont.data(:,14),'g'); % posture
plot(t,cont.data(:,15),'m'); % placement
legend({'flight';'thrust';'posture';'placement'})