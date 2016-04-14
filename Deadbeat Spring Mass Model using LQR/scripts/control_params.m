%% Other parameter files to run
model_params;
actuator_control_params;

%% Initializing on winch
control_start_time = 15;
initial_leg_selection = 0; % 1 == right, 0 == left
desired_initial_leg_roll_right = deg2rad(95);
desired_initial_leg_roll_left = deg2rad(95);

%% Lateral control params
robot_is_attached_to_boom = true;
max_torque_lateral = min(MTR_HIP_MAX_CURRENT, HIP_CURRENT_LIMIT)*HIP_MOTOR_CONSTANT*HIP_MTR_GEAR_RATIO;
lateral_target_position_left = 0.25;
lateral_target_position_right = -0.25;
lateral_target_beta = deg2rad(95);
minimum_lateral_beta = 75*pi/180;
maximum_lateral_beta = 99*pi/180;
max_lateral_knee_torque = 100; % Nm

%% Leg positioning in flight
swing_collision_stop_time = 0.050;
swing_collision_wait_time = 0.250;
swing_collision_damping_rate = (1/swing_collision_stop_time)*2*pi;

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

%% SEA trajectory following
kp_sea_trajectory = 450;
sea_trajectory_damping_scale = 0.75;

%% Velocity-based swing trajectory following
kp_velocity_swing_trajectory = 10;

%% State machine
fcut_contact = 95*(2*pi); % lowpass frequency on vertical GRF
contact_threshold = 0.25; % initial GRF touchdown threshold
loaded_threshold = 0.50; % locked contact GRF threshold
t_flight = 0.025; % time to wait before entering flight state

%% Posture control
desired_torso_pitch = 0*pi/180;
desired_torso_roll = 0*pi/180;
desired_lateral_symmetry_angle = 0*pi/180;

%% Cascade Control
%outer_loop_stance_sample_time = 4*sample_time;

%% Spring-Mass gait parameters for vertical spring
desired_com_forward_velocity = 0;
velocity_target_step = 0.3; % m/s, maximum difference between current velocity and target velocity
desired_com_lateral_velocity = 0.25;
forward_velocity_target_step = 0.1;
z_land = 0.86+d_vertical_com;
desired_com_apex_height = z_land + 0.04; 
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

%% Bouncing While Standing
standing_bounce_amplitude = 0.05;%;z_amplitude;
standing_bounce_frequency = (1/4)*2*pi;
standing_bounce_chirp_length = 60;
bounce_ddz = @(r,t) standing_bounce_amplitude*(2*standing_bounce_frequency*r*cos(t*standing_bounce_frequency) - (t*standing_bounce_frequency*r + standing_bounce_frequency).^2.*sin(t*standing_bounce_frequency));
standing_bounce_increase_rate = (spring_frequency/standing_bounce_frequency - 1)/standing_bounce_chirp_length;
standing_bounce_max_chirp_scale = spring_frequency/standing_bounce_frequency;
%figure('Name','Z Acceleration During Chirp'); fplot(@(t) bounce_ddz(standing_bounce_increase_rate,t),[0,standing_bounce_chirp_length],0.1e-3);
enable_bouncing = true;

%% Vertical LQR
A_vert = [0 1; 0 0];
B_vert = [0; 1/m_total_real];
Q_vert = diag([100 1]); R_vert = 0.00001;
[k_LQR_vertical, P_LQR_vertical]  = lqr(A_vert, B_vert, Q_vert, R_vert);
%k_vertical_winch = [3162.3, 717.74];

%% Forward LQR - Finite horizon
t_const_dyn = stance_duration/2;
t_sat_stance = @(t) max(min(t, stance_duration),0);
A_sag_t = @(t) [0 0 1 0; 0 0 0 1; 0 0 0 0; -m_total_real*(g+ddz_ref(t_sat_stance(t)))/i_robot 0 0 0];
B_sag_t = @(t) [0; 0; 1/m_total_real; z_ref(t_sat_stance(t))/i_robot];
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
% xlim([planned_end-stance_duration,planned_end]); ylim('auto'); legend('x','theta','dx','dtheta');

%% Standing LQR for Forward - infinite horizon
desired_standing_torso_pitch = -torso_centerline_pitch_offset_angle;
desired_standing_z = z_rest_new - z_amplitude;
A_sag_infinite = [0 0 1 0; % x th dx dth
                  0 0 0 1;
                  0 0 0 0;
                  -m_total_real*g/i_robot 0 0 0];
B_sag_infinite = [0; 0; 1/m_total_real; desired_standing_z/i_robot];
Q_sag_infinite = diag([1 100 1 100]); 
R_sag_infinite = 0.3;
[k_LQR_sagittal_infinite, P_LQR_sagittal_infinite] = lqr(A_sag_infinite, B_sag_infinite, Q_sag_infinite, R_sag_infinite);

%% Lateral stabilization during stance
max_primary_lateral_stance_torque = 2*HIP_MTR_MAX_CONT_TORQUE;
desired_standing_roll_direction = 2*initial_leg_selection - 1;
desired_standing_torso_roll = desired_standing_roll_direction * 4*pi/180;
desired_stance_beta2 = pi/2;
lateral_hip_inertia_about_pelvis = (m_leg+m_leg_motor)*lateral_offset^2;
lateral_hip_trunk_relative_inertia_about_pelvis = (m_torso*norm(com_torso(2:3))^2+i_torso(1))*(m_leg_motor*lateral_offset^2+i_torso(1))/(m_torso*norm(com_torso(2:3))^2+i_torso(1)+m_leg_motor*lateral_offset^2+i_leg_motor(1));
% PD control on swinging hip
kp_lateral_beta2 = 1000;
kd_lateral_beta2 = 0.8*2*sqrt(kp_lateral_beta2*lateral_hip_inertia_about_pelvis);
k_stance_secondary_roll = [kp_lateral_beta2; kd_lateral_beta2];
% PD control on torso roll
kp_lateral_torso_roll = 1000;
kd_lateral_torso_roll = 0.8*2*sqrt(kp_lateral_torso_roll*i_torso(1));
k_stance_torso_roll = [kp_lateral_torso_roll, kd_lateral_torso_roll];
kp_lateral_accel_for_torso_roll = 300;
kd_lateral_accel_for_torso_roll = 0.8*2*sqrt(kp_lateral_accel_for_torso_roll);
k_lateral_accel_for_torso_roll = [kp_lateral_accel_for_torso_roll, kd_lateral_accel_for_torso_roll];
% PD control for placing lateral motors on the boom
k_lateral_swing_on_boom = k_stance_secondary_roll;

%% lateral LQR in flight - [roll, beta1, droll, dbeta1]
It = mean(i_torso);
Im = mean(i_leg_motor);
d_pelvis_to_torso_com = norm(com_torso(2:3));
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

%% Swing leg placement
max_parabolic_z_retraction = 0.05;
z_retract_swing = 0.15;

%% Secondary leg parameters
l_retract_swing_min = 0.55;
l_retract_swing_max = 0.8;
l_retract_delta = 0.15;
fcut_leg_spring = 15*(2*pi); % Hz, low pass filter cutoff frequency for tracking the leg spring signal
lpf_damping = sqrt(2)/2;
B1_lpf_leg_spring = -2*exp(-lpf_damping*fcut_leg_spring*sample_time)*cos(fcut_leg_spring*sample_time*sqrt(1-lpf_damping^2));
B2_lpf_leg_spring = exp(-2*lpf_damping*fcut_leg_spring*sample_time);
A_lpf_leg_spring = 1 + B1_lpf_leg_spring + B2_lpf_leg_spring;

%% Kalman Filtering parameters - Center of Mass
% Coordinate system is z-up and in the yawed frame.
% x filter states: [dw_x]
% s_k+1 = s_k + dt/m*F
% when in stance, measure dx_w ~ dx_f with confidence based on loading
A_kalman_transverse = [1 sample_time 0; 0 1 sample_time; 0 0 1];
B_kalman_transverse = [0; 0; 1/m_total_real];
C_kalman_transverse = [1 0 0; 1 0 0; 0 0 1];
G_kalman_transverse = B_kalman_transverse / sqrt(sample_time);
A_kalman_vertical = [1 sample_time 0; 0 1 sample_time; 0 0 1];
B_kalman_vertical = [0; 0; 1/m_total_real];
C_kalman_vertical = [1 0 0; 1 0 0; 0 0 1];
G_kalman_vertical = B_kalman_vertical / sqrt(sample_time);
% Covariances
Q_kalman_GRF = 20^2; % N, error in GRF estimates
Q_kalman_GRF_difference = 2^2;
Q_kalman_lateral_GRF_difference = 10^2;
R_kalman_accelerometer = 2.00^2;  % m/s^2
R_kalman_foot_stance = 0.005^2 + 0.005^2;  % m, geometry error + ground error
R_kalman_foot_slip = 0.005^2 + 1^2;
kalman_stance_slip_threshold = 0.5;
% Initial estimates
P0_kalman_transverse = diag([0.05^2, 0.1^2, 0.25^2]); % [m, m/s, m/s^2], initial state error covariance
P0_kalman_vertical = diag([0.05^2, 0.1^2, 0.25^2]); % [m, m/s, m/s^2], initial state error covariance

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
fcut_accelerometer = 80*(2*pi);
lpf_damping = sqrt(2)/2;
B1_lpf_accelerometer = -2*exp(-lpf_damping*fcut_accelerometer*sample_time)*cos(fcut_accelerometer*sample_time*sqrt(1-lpf_damping^2));
B2_lpf_accelerometer = exp(-2*lpf_damping*fcut_accelerometer*sample_time);
A_lpf_accelerometer = 1 + B1_lpf_accelerometer + B2_lpf_accelerometer;

%% SEA Swing Load Kalman Filter
A_kalman_swing_load = [1 sample_time 0; 0 1 sample_time; 0 0 1];%
B_kalman_swing_load = [0; 0; 1/mean(j_segments)];
C_kalman_swing_load = [1 0 0; 0 0 mean(j_segments)];
G_kalman_swing_load = B_kalman_swing_load / sqrt(sample_time);
Q_kalman_SEA_torque_difference = 0.1^2;
P0_kalman_swing_load = diag([(1e-6)^2, (1e-3)^2, 10^2]);

%% Kalman Filtering parameters - Fourbar Gears
% A_kalman_fourbar_gear = [1, sample_time; 0, 1];
% B_kalman_fourbar_gear = [0, 0, 0; -1/j_motor, LEG_MTR_GEAR_RATIO/j_motor, -1/j_motor*(LEG_MTR_GEAR_RATIO-1)*j_rotor/i_robot]*sample_time;
% C_kalman_fourbar_gear = [1, 0; 1, 0];
% G_kalman_fourbar_gear = B_kalman_fourbar_gear / sqrt(sample_time);
% R_kalman_absolute_fail = (90*pi/180)^2;
% R_kalman_absolute_normal = (10^-3*pi/180)^2;
% R_kalman_incremental_unloaded = (5*10^-3*pi/180)^2 + (LEG_INC_ENCODER_RAD_PER_TICK)^2;
% R_kalman_incremental_loaded = (2.5*pi/180)^2 + (LEG_INC_ENCODER_RAD_PER_TICK)^2;
% Q_kalman_spring_torque = 20^2;
% Q_kalman_rotor_torque = 5^2;
% Q_kalman_trunk_torque = 0.2^2*Q_kalman_GRF + 4*Q_kalman_rotor_torque + 4*Q_kalman_spring_torque;
% P0_kalman_fourbar_gear = diag([R_kalman_absolute_normal, 2*R_kalman_absolute_normal/sample_time^2]);
% max_absolute_measurement_innovation = 15*pi/180;
% kalman_load_to_deflect_transmission = 500; % Nm