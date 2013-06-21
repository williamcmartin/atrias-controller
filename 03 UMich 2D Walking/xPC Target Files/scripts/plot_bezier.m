
t = 0:0.001:20;
f = 0.25; % Hz
s = sawtooth2(2*pi*f*t);
yval = zeros(length(s),1);
y2val = zeros(length(s),1);

right_stance = 1;
for i=1:length(s)
   
    if right_stance
        yval(i) = (bezier(h_alpha(1,:), s(i)))*180/pi; 
        y2val(i) = (bezier(h_alpha(2,:), s(i)))*180/pi;
    else
        y2val(i) = (bezier(h_alpha(1,:), s(i)))*180/pi; 
        yval(i) = (bezier(h_alpha(2,:), s(i)))*180/pi;
    end
    
    if s(i)>0.99 && ~(s(i+1)>0.99) 
      right_stance = 1 - right_stance;
    end
    
end


figure(800);
clf;
hold all;
plot(t,yval);
%plot(t,y2val);