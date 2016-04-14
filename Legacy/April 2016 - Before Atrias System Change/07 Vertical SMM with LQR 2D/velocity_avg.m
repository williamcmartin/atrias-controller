
previous = contact_nan(1);
time_x = [];
velocity_y = [];
sum = 0;
count = 0;
for i=2:size(contact_nan,1)
    
    if isnan(previous) && contact_nan(i) == 1
        sum = sum + dx_com_boom(i);
        count = count + 1;
    elseif previous == 1 && isnan(contact_nan(i))
        velocity_y = [velocity_y, sum / count];
        time_x = [time_x, t(i)];
        sum = 0;
        count = 0;
    end
    
    previous  = contact_nan(i);
end

figure(30)
scatter(time_x,velocity_y,'r.')