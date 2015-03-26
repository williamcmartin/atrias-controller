time_step = 6;
top_value = 50*pi/180;
step_value = 10*pi/180;
value = getparam(tg, getparamid(tg,'','sawtooth_peak_value'));
for i=1:floor(top_value/step_value)
    value = value + step_value
    setparam(tg, getparamid(tg,'','sawtooth_peak_value'), value);
    setparam(tg, getparamid(tg,'','sawtooth_slope'), value/sawtooth_time_values(2));
    pause(time_step);
end
setparam(tg, getparamid(tg,'','sawtooth_peak_value'), 10*pi/180);