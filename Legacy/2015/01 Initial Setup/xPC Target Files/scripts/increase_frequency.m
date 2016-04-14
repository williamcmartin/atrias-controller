f_per_second = (0.01)*2*pi;
time_step = 4;%0.05;
f_step = f_per_second*time_step;
max_frequency_addition = (1)*2*pi;
total_steps = max_frequency_addition/f_step;
frequency = getparam(tg, getparamid(tg,'','w_angle_h'));
for i=1:floor(total_steps)
    frequency = frequency + f_step
    setparam(tg, getparamid(tg,'','w_angle_h'), frequency);
    %pause(time_step);
    pause(2*pi/frequency);
end
setparam(tg, getparamid(tg,'','w_angle_h'), (1/4)*2*pi);