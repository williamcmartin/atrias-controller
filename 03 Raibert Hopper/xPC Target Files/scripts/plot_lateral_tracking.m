figure('Name','Lateral Tracking');
hold on;
plot(t, pos.data(:,9)*180/pi,'r');
plot(t, cont.data(:,9)*180/pi);