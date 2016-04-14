load('December_17_2013  5_29_01_PM');

t = pos.data(:,end);
T = t(t>25 & t<35);
F = right_leg_force_measured(t>25 & t<35);
m_total = 64;
g = 9.81;

figure(1)
plot(T, F);
ratio = F/(m_total*g);
figure(2)
plot(T, ratio)

threshold = 0.15;

contact = ratio > threshold;
%plot(contact)
