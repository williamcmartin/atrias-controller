selection = t>=44 & t<=51;
spring_idx = 1; %(RB RF LB LF)
known_k = k_sea(spring_idx); 
F_output = spring_forces(selection,spring_idx);
%F_input = desired_forces(selection,spring_idx);
F_input = commanded_forces(selection,spring_idx);
