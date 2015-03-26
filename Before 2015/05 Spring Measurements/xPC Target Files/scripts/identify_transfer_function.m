selection = t>=control_start_time & t<=(control_start_time+chirp_sweep_time);
spring_idx = 1; %(RB RF LB LF)
known_k = k_sea(spring_idx); 
F_output = spring_forces(selection,spring_idx);
F_input = desired_forces(selection,spring_idx);
