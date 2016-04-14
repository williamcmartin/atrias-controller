y = -0.3:0.01:0.3;
b = y*0;
N = length(y);
for i=1:N
    [~,b(i),~] = left_leg_IK(-[0, y(i), z_land-d_vertical_com]', lateral_offset); 
end
figure(900)

plot(y, 90-b*180/pi);