t = pos.data(:,end);
t_start = 40;
t_end = t_start+40;
position = pos.data(t>=t_start & t<=t_end,:);
torque = torq.data(t>=t_start & t<=t_end,:);
controller = cont.data(t>=t_start & t<=t_end,:);
t = position(:,end);
t = t - t_start;


q_out = [t, position(:,[3 4 1 2 7 8 5 6 9 10 11 12 13])];
dq_out = [t, position(:,[16 17 13 14 20 21 18 19 22 23 24 25 26])];
tau_cmd_out = [t, torque(:, 1:6)];
q_inc_vel_out = [t, position(:,33:38)];
q_inc_pos_out = [t, position(:,27:32)];
right_estimated_grf = controller(:,41:42);
left_estimated_grf = controller(:,43:44);
flight = controller(:,5);
GRF_XZ_estimate_out = [t, (right_estimated_grf+left_estimated_grf)];
GRF_XZ_estimate_out(logical(flight),2:3) = 0;
    


