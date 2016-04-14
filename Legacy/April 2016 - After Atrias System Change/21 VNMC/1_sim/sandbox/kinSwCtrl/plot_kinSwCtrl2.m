time    = simout_alp.time;
alp     = simout_alp.signals.values;
len     = simout_len.signals.values;

figure()
hold on;
xlim([-.5 .5])
ylim([0 1])
axis equal;
for t = 1:length(time)
    plot([0 len(t)*cos(alp(t))], [1 1-len(t)*sin(alp(t))])
    pause(0.01);
end

figure()
subplot(2,1,1)
plot(time, alp*180/pi);
subplot(2,1,2)
plot(time, len)