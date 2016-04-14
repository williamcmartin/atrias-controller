%% Misc
control_start_time = 15;
max_parabolic_z_retraction = 0.05;

%% Initial control on winch
desired_initial_leg_roll_right = pi/2;
desired_initial_leg_roll_left = pi/2 + deg2rad(5);
manual_leg_selection = 1;

%% Lateral hip control params
max_torque_lateral = min(MTR_HIP_MAX_CURRENT, HIP_CURRENT_LIMIT)*HIP_MOTOR_CONSTANT*HIP_MTR_GEAR_RATIO;
kp_lateral = 1000;
lateral_inertia_about_pelvis = (m_torso*norm(com_torso(2:3))^2+i_torso(1))*(m_leg_motor*lateral_offset^2+i_torso(1))/(m_torso*norm(com_torso(2:3))^2+i_torso(1)+m_leg_motor*lateral_offset^2+i_leg_motor(1));
kd_lateral = 0.9*2*sqrt(kp_lateral*lateral_inertia_about_pelvis);
kd_winch_lateral = 0.9*2*sqrt(kp_lateral*0.8);
lateral_target_angle_left  =  2*pi/180;
lateral_target_angle_right = 2*pi/180; 
lateral_transition_force = 150;
minimum_lateral_angle = -9.5*pi/180;
maximum_lateral_angle = 18*pi/180;

%% optimal motor torque distribution during force control
max_torque_sagittal = min(MTR_MAX_CURRENT, LEG_CURRENT_LIMIT)*LEG_MOTOR_CONSTANT*LEG_MTR_GEAR_RATIO;
lambda1 = 10; % hip torque 
lambda2 = 1;  % leg force

%% Leg Limits for commands
min_front_bar_angle = 98.0*pi/180; % ~83 degrees
max_front_bar_angle = 194.8*pi/180; % ~218 degrees
min_back_bar_angle = 165.0*pi/180; % ~144 degrees
max_back_bar_angle = 262.4*pi/180; % ~279 degrees
max_leg_length = 0.95;
min_leg_length = 0.5;

%% Sagittal motor PD control
kp_motor = 2500*HarmonicDriveEfficiency(0,30); % Nm/rad 
kd_motor = 0.75*2*sqrt(3.75*kp_motor); % Nm/rad , % of critical damping

%% State machine
fcut_contact = 95*(2*pi); % lowpass frequency on vertical GRF
contact_threshold = 0.25; % initial GRF touchdown threshold
loaded_threshold = 0.50; % locked contact GRF threshold
t_flight = 0.025; % time to wait before entering flight state

%% Posture control
desired_torso_pitch = 0*pi/180;
desired_torso_roll = 0*pi/180;
desired_lateral_symmetry_angle = 0*pi/180;

%% Spring-Mass parameters for vertical spring
% Froude: v^2 / (l_leg*g)
% Dimensionless stiffness: k*l_leg / (m*g)
desired_com_forward_velocity = 0;
desired_com_lateral_velocity = 0.25;
forward_velocity_target_step = 0.1;
z_land = 0.86+d_vertical_com;
desired_com_apex_height = z_land + 0.035; 
k_virtual = 13000;
spring_frequency = sqrt(k_virtual/m_total_real);
z_amplitude = sqrt(m_total_real^2*g^2 + 2*k_virtual*m_total_real*g*(desired_com_apex_height-z_land))/k_virtual;
z_rest_new = z_land - g/spring_frequency^2; % loaded virtual spring rest length
phase_f = asin((z_land-z_rest_new)/z_amplitude);
phase_0 = pi-phase_f;
if phase_f < phase_0, phase_f = phase_f + 2*pi; end
stance_duration = (phase_f-phase_0)/spring_frequency;
z_ref = @(t) z_rest_new + z_amplitude*sin(spring_frequency*t+phase_0);
dz_ref = @(t) z_amplitude*spring_frequency*cos(spring_frequency*t+phase_0);
ddz_ref = @(t) -z_amplitude*spring_frequency^2*sin(spring_frequency*t+phase_0);
dz_land = dz_ref(0);
flight_duration = -dz_land/g*2;
min_f_duration = 0.85*flight_duration;
dimensionless_stiffness = k_virtual*z_land / (m_total_real*g);
% figure('Name','Virtual Spring Z trajectory'); fplot(z_ref,[0,stance_duration]);
fprintf('Minimum Pelvis Height: %f\n',z_rest_new-z_amplitude-d_vertical_com);
fprintf('Max Required Leg Length: %f\n',z_land-d_vertical_com);
fprintf('Dimensionless Stiffness: %f\n',dimensionless_stiffness);
fprintf('Stance Time: %f\n',stance_duration);
fprintf('Flight Time: %f\n',flight_duration);
fprintf('Duty Factor: %f\n',stance_duration/(stance_duration+flight_duration));


%% Vertical LQR
A_vert = [0 1; 0 0];
B_vert = [0; 1/m_total_real];
Q_vert = diag([100 1]); R_vert = 0.00001;
[k_LQR_vertical, P_LQR_vertical]  = lqr(A_vert, B_vert, Q_vert, R_vert);
k_vertical_winch = [3162.3, 717.74];

%% Forward LQR - Finite horizon
t_const_dyn = stance_duration/2;
t_sat_stance = @(t) max(min(t, stance_duration),0);
A_sag_t = @(t) [0 0 1 0; 0 0 0 1; 0 0 0 0; m_total_real*(g+ddz_ref(t_sat_stance(t)))/i_robot 0 0 0];
B_sag_t = @(t) [0; 0; 1/m_total_real; -z_ref(t_sat_stance(t))/i_robot];
A_sag = A_sag_t(stance_duration-t_const_dyn);
B_sag = B_sag_t(stance_duration-t_const_dyn);
Q_sag = diag([0,20,0,0]);
R_sag = 0.5e-4;
H_sag = 0.001*diag([0 0 0 1]) ...  % pitch velocity
      + 0*diag([0 0 1 0]) ...  % x velocity
      + 1*diag([0 1 0 0]) ...  % pitch
      + 0*diag([1 0 0 0]) ...  % x
      + 0.27*[0 0 0 0; 0 1 0 flight_duration; 0 0 0 0; 0 flight_duration 0 flight_duration^2];  % pitch at landing
[k_LQR_sagittal, P_LQR_sagittal] = lqr(A_sag, B_sag, Q_sag, R_sag);
neg_dP = @(t,P) P*A_sag_t(t) + A_sag_t(t)'*P + Q_sag - P*B_sag_t(t)/R_sag*B_sag_t(t)'*P;
neg_dP_vec = @(t,P) reshape(neg_dP(t, reshape(P, size(A_sag))), [numel(A_sag),1]); % assume P is a vector
dt = 0.01; 
planned_end = 3.5; 
t_span = 0:dt:planned_end;
[T_lqr,P_backwards_vec] = ode45(neg_dP_vec,t_span, reshape(H_sag,[numel(A_sag),1]));
backwards_P_of_t = cell(length(T_lqr),1);
backwards_K_of_t = cell(length(T_lqr),1);
for i = 1:length(T_lqr)
  backwards_P_of_t{i} = reshape(P_backwards_vec(i,:), size(A_sag));
  backwards_K_of_t{i} = R_sag\B_sag'*backwards_P_of_t{i};
end
backwards_P_sag_of_t = cell2mat(arrayfun(@(x)permute(x{:},[3 1 2]),backwards_P_of_t,'UniformOutput',false));
backwards_K_sag_of_t = cell2mat(backwards_K_of_t);
% figure('Name', 'Finite Horizon Gains - Sagittal');
% plot([planned_end:-0.01:0],interp1(T_lqr, backwards_K_sag_of_t, [0:0.01:planned_end]))
% xlim([planned_end-stance_duration,planned_end]); ylim([-700,0]); legend('x','theta','dx','dtheta');


%% Lateral LQR, x_front = [y, roll, sym, dy, droll, L];  - Finite horizon
It = mean(i_torso);
Im = mean(i_leg_motor);
d_pelvis_to_torso_com = norm(com_torso(2:3));
A_front = [ 0 0 0 1 0 0; 
            0 0 0 0 1 0; 
            0 0 0 0 (i_torso(1)+m_torso*d_pelvis_to_torso_com^2+2*m_leg_motor*lateral_offset^2+2*i_leg_motor(1))/(i_leg_motor(1)+m_leg_motor*lateral_offset^2), -1/(i_leg_motor(1)+m_leg_motor*lateral_offset^2);
            0 0 0 0 0 0; 
            0 0 0 0 0 0; 
            -m_total_real*g*cos(desired_torso_pitch) 0 0 0 0 0];
B_front = [0 0; 0 0; 0 0; 
           1/m_total_real 0; 0 1; 
           z_land*cos(desired_torso_pitch) 0];
A_front_t = @(t) [ 0 0 0 1 0 0; 
                   0 0 0 0 1 0; 
                   0 0 0 0 (It+m_torso*d_pelvis_to_torso_com^2+2*m_leg_motor*lateral_offset^2+2*Im)/(Im+m_leg_motor*lateral_offset^2) -1/(Im+m_leg_motor*lateral_offset^2);
                   0 0 0 0 0 0; 
                   0 0 0 0 0 0; 
                  -m_total_real*(g+ddz_ref(t_sat_stance(t)))*cos(desired_torso_pitch) 0 0 0 0 0];
B_front_t = @(t) [0 0; 0 0; 0 0; 
                  1/m_total_real 0; 0 1; 
                  z_ref(t_sat_stance(t))*cos(desired_torso_pitch) 0];
Q_front = diag([1 10 10 1 10 10])*1; 
R_front = 0.005*diag([1 1]);
H_front = diag([1 10 10 1 10 10])*0.01;
% Q_front = diag([0 20 2 0 0.01 0.1])*1; 
% R_front = 1e-5*diag([1 1]);
% H_front = diag([0 0 0 0 0.001 0.001])*0.01;
neg_dP_f = @(t,P) P*A_front_t(t) + A_front_t(t)'*P + Q_front - P*B_front_t(t)/R_front*B_front_t(t)'*P;
[k_LQR_frontal, P_LQR_frontal] = lqr(A_front, B_front, Q_front, R_front);
neg_dP_vec_f = @(t,P) reshape(neg_dP_f(t, reshape(P, size(A_front))), [numel(A_front),1]); % assume P is a vector
[~,P_backwards_vec_f] = ode45(neg_dP_vec_f,t_span, reshape(H_front,[numel(A_front),1]));
backwards_P_front_of_t = cell(length(T_lqr),1);
backwards_K_front_of_t = cell(length(T_lqr),1);
for i = 1:length(T_lqr)
  backwards_P_front_of_t{i} = reshape(P_backwards_vec_f(i,:), size(A_front));
  backwards_K_front_of_t{i} = R_front\B_front'*backwards_P_front_of_t{i};
end
mat_K_front = cell2mat(backwards_K_front_of_t); % this is a 2nx6 matrix
backwards_K_front_of_t_row1 = mat_K_front(2*(1:length(T_lqr))-1, :);
backwards_K_front_of_t_row2 = mat_K_front(2*(1:length(T_lqr)), :);
backwards_P_front_of_t = cell2mat(arrayfun(@(x)permute(x{:},[3 1 2]),backwards_P_front_of_t,'UniformOutput',false));
% figure('Name', 'Finite Horizon Gains - Frontal GRF');
% plot([planned_end:-0.01:0],interp1(T_lqr, backwards_K_front_of_t_row1, [0:0.01:planned_end]))
% xlim([planned_end-stance_duration,planned_end]); ylim([-100,150]); legend('y', 'roll', 'sym', 'dy', 'droll', 'L');
% figure('Name', 'Finite Horizon Gains - Roll Acceleration');
% plot([planned_end:-0.01:0],interp1(T_lqr, backwards_K_front_of_t_row2, [0:0.01:planned_end]))
% xlim([planned_end-stance_duration,planned_end]); ylim([-100,150]); legend('y', 'roll', 'sym', 'dy', 'droll', 'L');


%% Standing LQR for Forward/Lateral - infinite horizon
desired_standing_torso_pitch = -torso_centerline_pitch_offset_angle;
desired_standing_roll_direction = 2*manual_leg_selection - 1;
desired_standing_torso_roll = desired_standing_roll_direction * 4*pi/180;
desired_standing_z = z_rest_new - z_amplitude;
A_sag_infinite = [0 0 1 0; % x th dx dth
                  0 0 0 1; 
                  0 0 0 0; 
                  m_total_real*g/i_robot 0 0 0];
B_sag_infinite = [0; 0; 1/m_total_real; -desired_standing_z/i_robot];
Q_sag_infinite = diag([1 10 1 10]); 
R_sag_infinite = 0.3;
[k_LQR_sagittal_infinite, P_LQR_sagittal_infinite] = lqr(A_sag_infinite, B_sag_infinite, Q_sag_infinite, R_sag_infinite);
%  x_front = [y, roll, sym, dy, droll, L]; 
A_front_infinite =  [ 0 0 0 1 0 0; 
                      0 0 0 0 1 0; 
                      0 0 0 0 (It+m_torso*d_pelvis_to_torso_com^2+2*m_leg_motor*lateral_offset^2+2*Im)/(Im+m_leg_motor*lateral_offset^2) -1/(Im+m_leg_motor*lateral_offset^2);
                      0 0 0 0 0 0; 
                      0 0 0 0 0 0; 
                      -m_total_real*g*cos(desired_standing_torso_pitch) 0 0 0 0 0];
B_front_infinite = [0 0; 0 0; 0 0; 
                    1/m_total_real 0; 0 1; 
                    desired_standing_z*cos(desired_standing_torso_pitch) 0];
Q_front_infinite = diag([1 10 10 1 1 1]);
R_front_infinite = 40*diag([1 1]);
[k_LQR_frontal_infinite, P_LQR_frontal_infinite] = lqr(A_front_infinite, B_front_infinite, Q_front_infinite, R_front_infinite);
%k_LQR_frontal_infinite(:,[1 4]) = 0;

%% lateral LQR in flight - [roll, beta1, droll, dbeta1]
Q_phibeta1beta2 = diag([100 500 1]);
Q_dphidbeta1 = diag([1 1]);
R_lat_flight = 2e-3*diag([1, 1]);
% left leg, beta2 is right
b1 = -(i_torso(1)+m_torso*d_pelvis_to_torso_com^2+2*i_leg_motor(1)+2*m_leg_motor*lateral_offset^2)/(i_leg_motor(1)+m_leg_motor*lateral_offset^2); b2 = 1;
T = [eye(2); b1, b2];
Q_new = T'*Q_phibeta1beta2*T;
Q_lat_flight = [Q_new, zeros(2,2); zeros(2,2), Q_dphidbeta1];
A_phi_beta1_dphi_dbeta1 = [0 0 1 0; 0 0 0 1; 0 0 0 0; 0 0 0 0];
B_phi_beta1_dphi_dbeta1 = [0 0; 0 0; 1/(i_torso(1)+m_torso*d_pelvis_to_torso_com^2), -1/(i_torso(1)+m_torso*d_pelvis_to_torso_com^2); 1/(i_torso(1)+m_torso*d_pelvis_to_torso_com^2)+1/(i_leg_motor(1)+m_leg_motor*lateral_offset^2), -1/(i_torso(1)+m_torso*d_pelvis_to_torso_com^2)];
K_left_lat_flight = lqr(A_phi_beta1_dphi_dbeta1, B_phi_beta1_dphi_dbeta1, Q_lat_flight, R_lat_flight);
% left leg startup on winch
Q_phibeta1beta2_winch = diag([0 500 500]);
Q_new_winch = T'*Q_phibeta1beta2_winch*T;
Q_lat_flight_winch = [Q_new_winch, zeros(2,2); zeros(2,2), Q_dphidbeta1];
K_left_lat_flight_winch = lqr(A_phi_beta1_dphi_dbeta1, B_phi_beta1_dphi_dbeta1, Q_lat_flight_winch, R_lat_flight);
% right leg, beta2 is left
b1 = (i_torso(1)+m_torso*d_pelvis_to_torso_com^2+2*i_leg_motor(1)+2*m_leg_motor*lateral_offset^2)/(i_leg_motor(1)+m_leg_motor*lateral_offset^2); b2 = 1;
T = [eye(2); b1, b2];
Q_new = T'*Q_phibeta1beta2*T;
Q_lat_flight = [Q_new, zeros(2,2); zeros(2,2), Q_dphidbeta1];
A_phi_beta1_dphi_dbeta1 = [0 0 1 0; 0 0 0 1; 0 0 0 0; 0 0 0 0];
B_phi_beta1_dphi_dbeta1 = [0 0; 0 0; -1/(i_torso(1)+m_torso*d_pelvis_to_torso_com^2), 1/(i_torso(1)+m_torso*d_pelvis_to_torso_com^2); 1/(i_torso(1)+m_torso*d_pelvis_to_torso_com^2)+1/(i_leg_motor(1)+m_leg_motor*lateral_offset^2), -1/(i_torso(1)+m_torso*d_pelvis_to_torso_com^2)];
K_right_lat_flight = lqr(A_phi_beta1_dphi_dbeta1, B_phi_beta1_dphi_dbeta1, Q_lat_flight, R_lat_flight);
% right leg startup on winch
K_right_lat_flight_winch = lqr(A_phi_beta1_dphi_dbeta1, B_phi_beta1_dphi_dbeta1, Q_lat_flight_winch, R_lat_flight);

%% Deadbeat reference libraries
target_dx = 0;
u_z_ref = @(t,s) m_total_real*g + m_total_real*ddz_ref(t);
u_x_ref = @(t,s) 1*u_z_ref(t)*s(1)/z_ref(t);
ddx_r = @(t,s) u_x_ref(t,s)/m_total_real;
x_ref_dyn = @(t,s_x) [s_x(2); ddx_r(t,s_x)]; % s_x = [x dx];
T_s = 0:dt:stance_duration;
if T_s(end) ~= stance_duration
  T_s = [T_s, stance_duration]; 
end
delta_u = 0.005;

regenerate = 0;
if exist('ref_trajs.mat','file') && ~regenerate
  load('ref_trajs.mat','target_dx_range','forward_x_of_dxstar','forward_dx_of_dxstar','forward_x','forward_dx','sym_x0');
  disp('loaded library of reference trajectories')
else
    N_time = length(T_s);
    target_dx_range = -1:0.05:1;
    N_vels = length(target_dx_range);
    % for each desired speed, scan for symmetric gait
    sym_x0 = nan(N_vels,1);
    rough_xend = -1:0.005:1;
    counter = 0;
    for i_target = 1:N_vels
      curr_target_dx = target_dx_range(i_target);
      initial_placements = nan(size(rough_xend));
      initial_vels = nan(size(rough_xend));
      for i_xend = 1:length(rough_xend)
        counter = counter + 1;
        x_end = rough_xend(i_xend);
        end_cond = [x_end; -curr_target_dx];
        [~,flipped_ref] = ode45(x_ref_dyn, T_s, end_cond);
        initial_placements(i_xend) = flipped_ref(end,1);
        initial_vels(i_xend) = -flipped_ref(end,2);
        if mod(counter,100) == 1
          disp(['generating ',num2str(counter), ' of ',num2str(N_vels*length(rough_xend)), ' initial trajectories to find sym conditions'])
        end
      end
      sym_x0(i_target) = interp1(initial_vels, initial_placements, curr_target_dx);
    end
    base_x_end = -(-0.05:0.005:0.05);
    N_traj = length(base_x_end);
    forward_x_of_dxstar = nan(N_vels, N_traj, N_time);
    forward_dx_of_dxstar = nan(N_vels, N_traj, N_time);
    B_dx_vs_x0_of_dxstar = nan(N_vels, N_traj);
    counter = 0;
    for i_vel = 1:N_vels
      target_vel = target_dx_range(i_vel);
      x_end_range = -sym_x0(i_vel) + base_x_end;
      for i_traj = 1:N_traj
        counter = counter + 1;
        if mod(counter,100) == 1
          disp(['generating ',num2str(counter), ' of ',num2str(N_traj*N_vels), ' trajectories with different target velocities'])
        end
        x_end = x_end_range(i_traj);
        end_cond = [x_end; -target_vel];
        [~,flipped_ref] = ode45(x_ref_dyn, T_s, end_cond);
        forward_x_of_dxstar(i_vel,i_traj,:) = fliplr(flipped_ref(:,1)');
        forward_dx_of_dxstar(i_vel,i_traj,:) = -fliplr(flipped_ref(:,2)');
        start_cond = [flipped_ref(end,1); -flipped_ref(end,2)];
        % compute sensitivity 
        [~,traj] = ode45(x_ref_dyn, T_s, start_cond-[delta_u;0]);
        state_minus = traj(end,:)';
        [~,traj] = ode45(x_ref_dyn, T_s, start_cond+[delta_u;0]);
        state_plus = traj(end,:)';
        B_foot_placement = (state_plus-state_minus)/(2*delta_u);
        B_dx_vs_x0_of_dxstar(i_vel,i_traj) = B_foot_placement(2);
      end
    end

    % small table for zero velocity targets
    x_end_range = 0-(-0.05:0.005:0.05); % use negative sign such that velocities forward_dx(:,1) are increasing
    N_traj = length(x_end_range); % number of trajectories sampled
    forward_x = nan(N_traj, N_time);
    forward_dx = nan(N_traj, N_time);
    for i = 1:N_traj
      if mod(i,10) == 1
        disp(['generating ',num2str(i), ' of ',num2str(N_traj), ' trajectories'])
      end
      x_end = x_end_range(i);
      end_cond = [x_end; target_dx];
      [~,flipped_ref] = ode45(x_ref_dyn, T_s, [x_end, -target_dx]);
      forward_x(i,:) = fliplr(flipped_ref(:,1)');
      forward_dx(i,:) = -fliplr(flipped_ref(:,2)');
    end
    
    save('ref_trajs.mat','target_dx_range','forward_x_of_dxstar','forward_dx_of_dxstar',...
         'forward_x','forward_dx','sym_x0');
end
x0_sym = interp1(forward_dx(:,1), forward_x(:,1), target_dx); % find symmetric initial condition

%% Closed loop feedback - compute velocity change per leg placement change
[~,traj] = ode45(x_ref_dyn, T_s, [x0_sym-delta_u, target_dx]);
state_minus = traj(end,:)';
[~,traj] = ode45(x_ref_dyn, T_s, [x0_sym+delta_u, target_dx]);
state_plus = traj(end,:)';
B_foot_placement = (state_plus-state_minus)/(2*delta_u);
B_dx_versus_x0 = B_foot_placement(2);
recorded_steps = 15;

%% Secondary leg parameters
l_retract_swing_min = 0.55;
l_retract_swing_max = 0.8;
l_retract_delta = 0.15;
fcut_leg_spring = 15*(2*pi); % Hz, low pass filter cutoff frequency for tracking the leg spring signal
lpf_damping = sqrt(2)/2;
B1_lpf_leg_spring = -2*exp(-lpf_damping*fcut_leg_spring*sample_time)*cos(fcut_leg_spring*sample_time*sqrt(1-lpf_damping^2));
B2_lpf_leg_spring = exp(-2*lpf_damping*fcut_leg_spring*sample_time);
A_lpf_leg_spring = 1 + B1_lpf_leg_spring + B2_lpf_leg_spring;

%% Raibert placement parameters
alpha_min = 40*pi/180;
k_placement = 0.2;
velocity_avg_samples = 0.100/sample_time;
l0_leg = 0.91;
min_leg_extension_time = 0.100;
x_limit = l0_leg*cos(alpha_min);
x_global_range = 3; % m, distance to travel before reversing direction
velocity_target_step = 0.3; % m/s, maximum difference between current velocity and target velocity

%% Kalman Filtering parameters - Center of Mass
% Coordinate system is z-up and in the yawed frame.
% x filter states: [dw_x]
% s_k+1 = s_k + dt/m*F
% when in stance, measure dx_w ~ dx_f with confidence based on loading
A_kalman_transverse = 1;
B_kalman_transverse = sample_time / m_total_real;
C_kalman_transverse = [1; 1]; % measurement is dx_rel + dxfoot^ = dx_w-dfL + dfL_hat, covariances sum.
G_kalman_transverse = B_kalman_transverse / sqrt(sample_time);
A_kalman_vertical = [1 sample_time; 0 1];
B_kalman_vertical = [0; sample_time/m_total_real];
C_kalman_vertical = [1 0; 0 1; 1 0; 0 1]; % measurement is [z_rel + z_foot^; dz_rel + dz_foot^; repeat for right];
G_kalman_vertical = B_kalman_vertical/sqrt(sample_time);
% Covariances
Q_kalman_GRF = 40^2; % N, error in GRF estimates
R_kalman_foot_stance = 0.005^2 + 0.005^2;  % m, geometry error + ground error
R_kalman_foot_slip = 0.005^2 + 1^2;
R_kalman_dfoot_stance = 0.005^2 + 0.005^2 ; % m/s, geometry error + ground_error
R_kalman_dfoot_slip = 0.005^2 + 5^2;
kalman_stance_slip_threshold = 0.5;
% Initial estimates
P0_kalman_transverse = 0.2^2; % m/s, initial state error covariance
P0_kalman_vertical = diag([0.05^2, 0.2^2]); % [m, m/s], initial state error covariance

%% Low pass filters for various signals
fcut_lateral_angle = 80*(2*pi);
lpf_damping = sqrt(2)/2;
B1_lpf_lateral_angle = -2*exp(-lpf_damping*fcut_lateral_angle*sample_time)*cos(fcut_lateral_angle*sample_time*sqrt(1-lpf_damping^2));
B2_lpf_lateral_angle = exp(-2*lpf_damping*fcut_lateral_angle*sample_time);
A_lpf_lateral_angle = 1 + B1_lpf_lateral_angle + B2_lpf_lateral_angle;
fcut_imu = 80*(2*pi);
lpf_damping = sqrt(2)/2;
B1_lpf_imu = -2*exp(-lpf_damping*fcut_imu*sample_time)*cos(fcut_imu*sample_time*sqrt(1-lpf_damping^2));
B2_lpf_imu = exp(-2*lpf_damping*fcut_imu*sample_time);
A_lpf_imu = 1 + B1_lpf_imu + B2_lpf_imu;
fcut_fourbar_angles = 80*(2*pi);
lpf_damping = sqrt(2)/2;
B1_lpf_fourbar_angles = -2*exp(-lpf_damping*fcut_fourbar_angles*sample_time)*cos(fcut_fourbar_angles*sample_time*sqrt(1-lpf_damping^2));
B2_lpf_fourbar_angles = exp(-2*lpf_damping*fcut_fourbar_angles*sample_time);
A_lpf_fourbar_angles = 1 + B1_lpf_fourbar_angles + B2_lpf_fourbar_angles;
% fcut_com_xyz = 45*(2*pi);
% lpf_damping = sqrt(2)/2;
% B1_lpf_com_xyz = -2*exp(-lpf_damping*fcut_com_xyz*sample_time)*cos(fcut_com_xyz*sample_time*sqrt(1-lpf_damping^2));
% B2_lpf_com_xyz = exp(-2*lpf_damping*fcut_com_xyz*sample_time);
% A_lpf_com_xyz = 1 + B1_lpf_com_xyz + B2_lpf_com_xyz;

%% Kalman Filtering parameters - Fourbar Gears
A_kalman_fourbar_gear = [1, sample_time; 0, 1];
B_kalman_fourbar_gear = [0, 0, 0; -1/j_motor, LEG_MTR_GEAR_RATIO/j_motor, -1/j_motor*(LEG_MTR_GEAR_RATIO-1)*j_rotor/i_robot]*sample_time;
C_kalman_fourbar_gear = [1, 0; 1, 0];
G_kalman_fourbar_gear = B_kalman_fourbar_gear / sqrt(sample_time);
R_kalman_absolute_fail = (90*pi/180)^2;
R_kalman_absolute_normal = (10^-3*pi/180)^2;
R_kalman_incremental_unloaded = (5*10^-3*pi/180)^2 + (LEG_INC_ENCODER_RAD_PER_TICK)^2;
R_kalman_incremental_loaded = (2.5*pi/180)^2 + (LEG_INC_ENCODER_RAD_PER_TICK)^2;
Q_kalman_spring_torque = 20^2;
Q_kalman_rotor_torque = 5^2;
Q_kalman_trunk_torque = 0.2^2*Q_kalman_GRF + 4*Q_kalman_rotor_torque + 4*Q_kalman_spring_torque;
P0_kalman_fourbar_gear = diag([R_kalman_absolute_normal, 2*R_kalman_absolute_normal/sample_time^2]);
max_absolute_measurement_innovation = 15*pi/180;
kalman_load_to_deflect_transmission = 500; % Nm
