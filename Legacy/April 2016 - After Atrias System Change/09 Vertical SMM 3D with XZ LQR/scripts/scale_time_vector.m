recorded_length = length(time_recorded);
simulation_length = round(time_recorded(end) / sample_time);
time_vector_scale = simulation_length / recorded_length;