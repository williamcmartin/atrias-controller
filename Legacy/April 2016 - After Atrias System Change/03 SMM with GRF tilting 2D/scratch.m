%%
clear all;

syms primary_leg_length primary_leg_global_angle primary_leg_force primary_leg_torque torso_pitch torso_torque d_y_com real

J = [sin(primary_leg_global_angle), primary_leg_length*cos(primary_leg_global_angle), -d_y_com*cos(torso_pitch);
     cos(primary_leg_global_angle), -primary_leg_length*sin(primary_leg_global_angle), d_y_com*sin(torso_pitch)];

tau = [primary_leg_force; primary_leg_torque; torso_torque];

simplify(pinv(J')*tau)
 
%% 
clear all;
syms g1 l d th real
syms dg1 dl dth ddg1 ddl ddth real
syms m real
J = [-sin(g1), -l*cos(g1), d*cos(th);
     -cos(g1),  l*sin(g1), -d*sin(th)];
dJ = [-dg1*cos(g1), -dl*cos(g1)+l*dg1*sin(g1), -d*dth*sin(th);
      dg1*sin(g1), dl*sin(g1)+l*dg1*cos(g1), -d*dth*cos(th)];
q = [l; g1; th];
dq = [dl; dg1; dth];
ddq = [ddl; ddg1; ddth];
ddx = dJ*dq + J*ddq;
F = m*ddx;

simplify(F)

syms primary_leg_length primary_leg_global_angle  torso_pitch d_y_com real
syms  d_primary_leg_length d_primary_leg_global_angle d_torso_pitch dd_primary_leg_length dd_primary_leg_global_angle dd_torso_pitch real
simplify(subs(F,[l g1 th d dl dg1 dth ddl ddg1 ddth],[primary_leg_length primary_leg_global_angle torso_pitch d_y_com d_primary_leg_length d_primary_leg_global_angle d_torso_pitch dd_primary_leg_length dd_primary_leg_global_angle dd_torso_pitch]))



simplify(subs(F,[l g1 th d dl dg1 dth ddl ddg1 ddth],[primary_leg_length pi 0 d_y_com d_primary_leg_length 0 0 dd_primary_leg_length 0 0]))


%%
F_vertical = [614.9, 704.0, 776.9, 849.9, 1356.6];
front_minus_back_torque = -F_vertical(5)./(cos(pi+torso_pitch).*cos(left_lateral_global)).*left_leg_width./(deflections(:,4) - deflections(:,3));
figure(901); plot(t, front_minus_back_torque)


%% Load force plate
F = plot_force_plate_data( 'DSADATA00009.txt' );