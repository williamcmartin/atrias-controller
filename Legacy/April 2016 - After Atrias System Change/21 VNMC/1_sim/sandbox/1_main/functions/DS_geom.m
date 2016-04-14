function [L_min,L_max,gamma_min,gamma_max] = DS_geom(step_width,DS_width,height)

L_min = sqrt(height^2+((step_width - DS_width)/2)^2);
L_max = sqrt(height^2 + (DS_width + (step_width - DS_width)/2)^2);
a = asin((step_width-DS_width)/(2*L_min));
b = asin((DS_width+(step_width-DS_width)/2)/L_max);
gamma_min = pi-a;
gamma_max = pi+b;


end