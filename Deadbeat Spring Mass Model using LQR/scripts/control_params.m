%% Other parameter files to run
model_params;
actuator_control_params;

%% Initializing on winch
control_start_time = 15;
initial_leg_selection = 0; % 1 == right, 0 == left
desired_initial_leg_roll_right = deg2rad(95);
desired_initial_leg_roll_left = deg2rad(95);

%% Lateral control params
max_torque_lateral = min(MTR_HIP_MAX_CURRENT, HIP_CURRENT_LIMIT)*HIP_MOTOR_CONSTANT*HIP_MTR_GEAR_RATIO;
lateral_target_position_left = 0.15;
lateral_target_position_right = -0.15;
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


%% Sagittal motor PD control
kp_motor = 2500*HarmonicDriveEfficiency(0,30); % Nm/rad 
kd_motor = 0.75*2*sqrt(3.75*kp_motor); % Nm/rad , % of critical damping

%% SEA trajectory following
kp_sea_trajectory = 450;
sea_trajectory_damping_scale = 0.75;

%% Velocity-based swing trajectory following
kp_velocity_swing_trajectory = 10;

%% State machine
contact_threshold = 0.50; % initial GRF touchdown threshold
t_flight = 0.025; % time to wait before entering flight state

%% Posture control
desired_torso_pitch = 0;%-10*pi/180;
desired_torso_roll = 0*pi/180;
desired_lateral_symmetry_angle = 0*pi/180;

%% Spring-Mass gait parameters for vertical spring
% forward_velocity_test_1 = [zeros(5,1); (0:0.1:0.5)'; (0.5:-0.1:0)'; repelem((0:0.2:1)',5,1); repelem((1:-0.2:0)',5,1)];
% forward_velocity_test_2 = [zeros(5,1); (0:0.1:0.5)'; (0.5:-0.1:0)'; repelem((0:0.4:1.6)',5,1); repelem((1.6:-0.4:0)',5,1)];
% forward_velocity_test_3 = [zeros(5,1); (0:0.1:0.5)'; (0.5:-0.1:0)'; repelem((0:0.2:1)',10,1); repelem((1:-0.2:0)',10,1)];
% forward_velocity_max_speed = [zeros(5,1); (0:0.1:0.5)'; (0.5:-0.1:0)'; (0:0.1:2.6)'; ones(5,1)*2.6; (2.6:-0.1:0)'];
% forward_velocity_nominal_gait = [zeros(5,1); (0:0.1:0.5)'; (0.5:-0.1:0)'; (0:0.1:1.0)'; ones(30,1)*1.0; (1.0:-0.1:0)'];
% forward_velocity_ground_disturbance_test = [zeros(5,1); (0:0.1:0.5)'; (0.5:-0.1:0)'; (0:0.2:1.0)'; ones(50,1)*1.0; (1.0:-0.2:0)'];
% forward_velocity_flat_40cmps = [zeros(5,1); (0:0.1:0.5)'; (0.5:-0.1:0)'; repelem((0:0.4:1.6)',5,1); repelem((1.6:-0.4:0)',5,1)];
% forward_velocity_short_test = [zeros(5,1); (0:0.1:0.5)'; (0.5:-0.1:0)'];
%forward_velocity_one_lap_at_1mps = [zeros(5,1); (0:0.1:0.5)'; (0.5:-0.1:0)'; (0:0.2:1.0)'; ones(24,1)*1.0; (1.0:-0.2:0)'];
forward_velocity_up_to_1mps = [zeros(5,1); (0:0.1:0.5)'; (0.5:-0.1:0)'; (0:0.2:1)'; ones(8,1)*1; (1:-0.2:0)'];
forward_velocity_up_to_2mps = [zeros(5,1); (0:0.1:0.5)'; (0.5:-0.1:0)'; ...
                               (0:0.2:1)'; (1.1:0.1:2)'; (1.9:-0.1:1.1)'; (1:-0.2:0)'];
forward_velocity_up_to_2_5mps = [zeros(5,1); (0:0.1:0.5)'; (0.5:-0.1:0)'; ...
                               (0:0.2:1)'; (1.1:0.1:2.5)'; (2.4:-0.1:1.1)'; (1:-0.2:0)'];
forward_velocity_up_to_3mps = [zeros(5,1); (0:0.1:0.5)'; (0.5:-0.1:0)'; ...
                               (0:0.2:1)'; (1.1:0.1:3)'; ones(8,1)*3; (3:-0.1:1.1)'; (1:-0.2:0)'];
forward_velocity_up_to_4mps = [zeros(5,1); (0:0.1:0.5)'; (0.5:-0.1:0)'; (0:0.2:4)'; ones(8,1)*4; (14:-0.2:0)'];
forward_velocity_one_lap_at_1mps_32000 = [zeros(5,1); (0:0.1:0.5)'; (0.5:-0.1:0)'; (0:0.2:1.0)'; ones(30,1)*1.0; (1.0:-0.2:0)'];
forward_velocity_one_lap_at_0_5mps_32000 = [zeros(5,1); (0:0.1:0.5)'; (0.5:-0.1:0)'; (0:0.1:0.5)'; ones(30,1)*0.5; (0.5:-0.2:0)'];

step_to_turn_off_smm_velocity_feedback = 31;
step_to_turn_on_smm_velocity_feedback = 42;
step_to_stop_adapting_return_map = 20;

desired_com_forward_velocity = 0;
desired_com_lateral_velocity = 0;
forward_velocity_target_step = 0.2;
z_land = 0.90+d_vertical_com;%0.89+d_vertical_com;%
desired_com_apex_height = z_land + 0.02;% + 0.025; 
k_virtual = 32000;% %16000;%45000;%
spring_frequency = sqrt(k_virtual/m_total_real);
z_amplitude = sqrt(m_total_real^2*g^2 + 2*k_virtual*m_total_real*g*(desired_com_apex_height-z_land))/k_virtual;
z_rest_new = z_land - g/spring_frequency^2; % loaded virtual spring rest length
phase_f = asin((z_land-z_rest_new)/z_amplitude);
phase_0 = pi-phase_f;
if phase_f < phase_0, phase_f = phase_f + 2*pi; end
stance_duration = (phase_f-phase_0)/spring_frequency;
z_ref = @(t) z_rest_new + z_amplitude*sin(spring_frequency*t+phase_0);
z_ref_flight = @(t) -0.5*g*t.^2 + desired_com_apex_height;
dz_ref = @(t) z_amplitude*spring_frequency*cos(spring_frequency*t+phase_0);
ddz_ref = @(t) -z_amplitude*spring_frequency^2*sin(spring_frequency*t+phase_0);
dz_land = dz_ref(0);
flight_duration = -dz_land/g*2;
min_f_duration = 0.75*flight_duration;
t_stance_offset = (pi-asin((contact_threshold*g-g)/(-z_amplitude*spring_frequency^2)) - phase_0) / spring_frequency;
if t_stance_offset < 0, t_stance_offset = 0; end
dimensionless_stiffness = k_virtual*z_land / (m_total_real*g);
% figure('Name','Virtual Spring Z trajectory'); fplot(z_ref,[0,stance_duration]);
% figure('Name','Virtual Spring dZ trajectory'); fplot(dz_ref,[0,stance_duration]);
% figure('Name','Virtual Spring ddZ trajectory'); plot(0:0.0001:stance_duration,ddz_ref(0:0.0001:stance_duration));
fprintf('Minimum Pelvis Height: %f\n',z_rest_new-z_amplitude-d_vertical_com);
fprintf('Max Required Leg Length: %f\n',z_land-d_vertical_com);
fprintf('Dimensionless Stiffness: %f\n',dimensionless_stiffness);
fprintf('Stance Time: %f\n',stance_duration);
fprintf('Flight Time: %f\n',flight_duration);
fprintf('Duty Factor: %f\n',stance_duration/(stance_duration+flight_duration));



%% Leg Limits for commands
delta_from_mechanical_limits = 0.05 + 6*pi/180;
min_front_bar_angle = MOTOR_POSITION_LIMITS_LOWER(1) + delta_from_mechanical_limits;
max_front_bar_angle = MOTOR_POSITION_LIMITS_UPPER(1) - delta_from_mechanical_limits;
min_back_bar_angle = MOTOR_POSITION_LIMITS_LOWER(2) + delta_from_mechanical_limits;
max_back_bar_angle = MOTOR_POSITION_LIMITS_UPPER(2) - delta_from_mechanical_limits;
max_leg_length = cos(0.5/2);
min_leg_length = 0.5;
max_x_touchdown = sqrt((max_leg_length)^2 - (z_land - d_vertical_com)^2);

%% Bouncing While Standing
standing_bounce_amplitude = 0.05;
standing_bounce_frequency = (1/4)*2*pi;
standing_bounce_chirp_length = 40;
bounce_ddz = @(r,t) standing_bounce_amplitude*(2*standing_bounce_frequency*r*cos(t*standing_bounce_frequency) - (t*standing_bounce_frequency*r + standing_bounce_frequency).^2.*sin(t*standing_bounce_frequency));
standing_bounce_increase_rate = (spring_frequency/standing_bounce_frequency - 1)/standing_bounce_chirp_length;
standing_bounce_max_chirp_scale = spring_frequency/standing_bounce_frequency;
figure('Name','Z Acceleration During Chirp'); fplot(@(t) bounce_ddz(standing_bounce_increase_rate,t),[0,standing_bounce_chirp_length],0.1e-3);
enable_bouncing = true;

%% Vertical LQR
A_vert = [0 1; 0 0];
B_vert = [0; 1/m_total_real];
Q_vert = diag([100 1]); R_vert = 2.5e-6;
[k_LQR_vertical, P_LQR_vertical]  = lqr(A_vert, B_vert, Q_vert, R_vert);
ti_z_stance = 1;

%% Forward LQR - Finite horizon
% t_const_dyn = stance_duration/2;
% t_sat_stance = @(t) max(min(t, stance_duration),0);
% A_sag_t = @(t) [0 0 1 0; 0 0 0 1; 0 0 0 0; m_total_real*(g+ddz_ref(t_sat_stance(t)))/i_robot 0 0 0];
% B_sag_t = @(t) [0; 0; 1/m_total_real; -z_ref(t_sat_stance(t))/i_robot];
% A_sag = A_sag_t(stance_duration-t_const_dyn);
% B_sag = B_sag_t(stance_duration-t_const_dyn);
% Q_sag = diag([1,25,1,1]);
% R_sag = 0.75e-4;
% H_sag = 0.001*diag([0 0 0 1]) ...  % pitch velocity
%       + 0*diag([0 0 1 0]) ...  % x velocity
%       + 1*diag([0 1 0 0]) ...  % pitch
%       + 0*diag([1 0 0 0]) ...  % x
%       + 0.27*[0 0 0 0; 0 1 0 flight_duration; 0 0 0 0; 0 flight_duration 0 flight_duration^2];  % pitch at landing
% H_sag = diag([0,5,0,0.03]);
% dt = 0.01; 
% planned_end = 3.5;
% t_span = 0:dt:planned_end;
% [k_LQR_sagittal, P_LQR_sagittal] = lqr(A_sag, B_sag, Q_sag, R_sag);
% neg_dP = @(t,P) P*A_sag_t(t) + A_sag_t(t)'*P + Q_sag - P*B_sag_t(t)/R_sag*B_sag_t(t)'*P;
% neg_dP_vec = @(t,P) reshape(neg_dP(t, reshape(P, size(A_sag))), [numel(A_sag),1]); % assume P is a vector
% [T_lqr,P_backwards_vec] = ode45(neg_dP_vec,t_span, reshape(H_sag,[numel(A_sag),1]));
% backwards_P_of_t = cell(length(T_lqr),1);
% backwards_K_of_t = cell(length(T_lqr),1);
% backwards_eig_of_P = zeros(4,length(T_lqr));
% for i = 1:length(T_lqr)
%   backwards_P_of_t{i} = reshape(P_backwards_vec(i,:), size(A_sag));
%   backwards_eig_of_P(:,i) = eig(backwards_P_of_t{i});
%   backwards_K_of_t{i} = R_sag\B_sag'*backwards_P_of_t{i};
%   %backwards_K_of_t{i} = R_sag\B_sag_t(t_sat_stance(T_lqr(i)))'*backwards_P_of_t{i};
% end
% backwards_P_sag_of_t = cell2mat(arrayfun(@(x)permute(x{:},[3 1 2]),backwards_P_of_t,'UniformOutput',false));
% backwards_K_sag_of_t = cell2mat(backwards_K_of_t);
% figure('Name', 'Finite Horizon Gains - Sagittal');
% plot([planned_end:-0.01:0],interp1(T_lqr, backwards_K_sag_of_t, [0:0.01:planned_end]));
% hold on;
% plot([planned_end-stance_duration:dt:planned_end],-i_robot./z_ref(t_sat_stance(0:dt:stance_duration))*90);
% plot([planned_end-stance_duration:dt:planned_end],-i_robot./z_ref(t_sat_stance(0:dt:stance_duration))*18);
% xlim([planned_end-stance_duration,planned_end]); 
% ylim('auto'); legend('x','theta','dx','dtheta','theta, GRF tilting', 'dtheta, GRF tilting');

%% Discrete Finite Horizon LQR
t_sat_stance = @(t) max(min(t, stance_duration),0);
dt = 0.001;
A_sag_t = @(t) [1 0 dt 0; ... % x, theta, dx dtheta
                0 1 0 dt; ...
                0 0 1 0; ...
                dt*m_total_real*(g+ddz_ref(t_sat_stance(t)))/i_robot 0 0 1];
B_sag_t = @(t) [0; 0; 1/m_total_real; -z_ref(t_sat_stance(t))/i_robot]*dt;
Q_sag = diag([1,30,1,1]);
R_sag = 1e-4;
H_sag = diag([0,5,0,0.03]);
ms_in_stance = ceil(stance_duration*1000);
t_final = 3; %ms_in_stance/1000.0;
t_span_lqr = 0:dt:t_final;
number_of_t = length(t_span_lqr);
P_sag_cell = cell(number_of_t,1);
P_sag_cell{end} = H_sag;
K_sag_cell = cell(number_of_t,1);
K_sag_cell{end} = [0 0 0 0];
for k=number_of_t-1:-1:1
    t = t_span_lqr(k);
    A = A_sag_t(t_sat_stance(t)); 
    B = B_sag_t(t_sat_stance(t));
    K_sag_cell{k} = (R_sag + B'*P_sag_cell{k+1}*B) \ (B'*P_sag_cell{k+1}*A);
    P_sag_cell{k} = A'*P_sag_cell{k+1}*A - (A'*P_sag_cell{k+1}*B) / (R_sag+B'*P_sag_cell{k+1}*B) * (B'*P_sag_cell{k+1}*A) + Q_sag;
end
K_sag_t = cell2mat(K_sag_cell);
P_sag_t = cell2mat(arrayfun(@(x)permute(x{:},[3 1 2]),P_sag_cell,'UniformOutput',false));
K_sag_t = K_sag_t(1:ms_in_stance+1,:);
P_sag_t = P_sag_t(1:ms_in_stance+1,:,:);
t_span_lqr = 0:dt:ms_in_stance/1000.0;
%figure('Name', 'Finite Horizon Gains - Sagittal');
%plot(t_span_lqr,interp1(t_span_lqr, K_sag_t, t_span_lqr));
%legend('x','theta','dx','dtheta');

%% Standing LQR for Forward - infinite horizon
desired_standing_torso_pitch = -torso_centerline_pitch_offset_angle;
desired_standing_z = z_rest_new - z_amplitude;
A_sag_infinite = [0 0 1 0; % x th dx dth
                  0 0 0 1;
                  0 0 0 0;
                  m_total_real*g/i_robot 0 0 0];
B_sag_infinite = [0; 0; 1/m_total_real; -desired_standing_z/i_robot];
Q_sag_infinite = diag([1 100 1 100]); 
R_sag_infinite = 0.3;
[k_LQR_sagittal_infinite, P_LQR_sagittal_infinite] = lqr(A_sag_infinite, B_sag_infinite, Q_sag_infinite, R_sag_infinite);

%% Lateral stabilization during stance
max_primary_lateral_stance_torque = 3*HIP_MTR_MAX_CONT_TORQUE;
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
dt = 0.01;
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
    target_dx_range = 0:0.1:1;
    N_vels = length(target_dx_range);
    % for each desired speed, scan for symmetric gait
    sym_x0 = nan(N_vels,1);
    rough_xend = -1.0:0.005:1.0;
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
    base_x_end = -(-0.36:0.01:0.36);%-(-0.30:0.01:0.30);
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
T_s = fliplr(stance_duration-T_s); % Flipped Ts spacing to match generated tables

%% Closed loop feedback - compute velocity change per leg placement change
[~,traj] = ode45(x_ref_dyn, T_s, [x0_sym-delta_u, target_dx]);
state_minus = traj(end,:)';
[~,traj] = ode45(x_ref_dyn, T_s, [x0_sym+delta_u, target_dx]);
state_plus = traj(end,:)';
B_foot_placement = (state_plus-state_minus)/(2*delta_u);
B_dx_versus_x0 = B_foot_placement(2);
recorded_steps = 100;
initial_dy_takeoff_history = NaN;
initial_dy_touchdown_history = NaN;
initial_target_dy_history = NaN;
initial_y_foot_correction_history = NaN;
if exist('adaptive_foot_x_data.mat', 'file') == 2
    %load('adaptive_foot_x_data.mat');
    initial_dx_takeoff_history = NaN;
    initial_dx_touchdown_history = NaN;
    initial_x_foot_correction_history = NaN;
    initial_target_dx_history = NaN;
else
    initial_dx_takeoff_history = NaN;
    initial_dx_touchdown_history = NaN;
    initial_x_foot_correction_history = NaN;
    initial_target_dx_history = NaN;
end

%% Swing leg placement
max_parabolic_z_retraction = 0.11+0.04;
z_retract_swing = 0.22;

%% Secondary leg parameters
l_retract_swing_min = 0.50;
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
G_kalman_transverse = B_kalman_transverse;
A_kalman_no_position = [1 sample_time; 0 1];
B_kalman_no_position = [0; 1/m_total_real];
C_kalman_no_position = [1 0; 1 0; 0 1];
G_kalman_no_position = B_kalman_no_position;
A_kalman_vertical = [1 sample_time 0; 0 1 sample_time; 0 0 1];
B_kalman_vertical = [0; 0; 1/m_total_real];
C_kalman_vertical = [1 0 0; 1 0 0; 0 0 1];
G_kalman_vertical = B_kalman_vertical;
% Covariances
Q_kalman_GRFz_difference = 2*(50)^2/sample_time; % covariance of dF/dt = 2*cov(F)/dt
Q_kalman_GRFx_difference = 2*(50)^2/sample_time;
Q_kalman_GRFy_difference = 2*(50)^2/sample_time;
R_kalman_accelerometer = 1.00^2;  % m/s^2
R_kalman_foot_stance = 0.01^2 + 0.005^2;  % m, geometry error + ground error
R_kalman_foot_slip = 0.01^2 + 1^2;
R_kalman_dfoot_stance = 0.25^2; % m/s
R_kalman_dfoot_slip = 5^2; % m/s
kalman_stance_slip_threshold = 0.1;
% Initial estimates
P0_kalman_transverse = diag([0.015^2, 0.05^2, 0.125^2]); % [m, m/s, m/s^2], initial state error covariance
P0_kalman_no_position = diag([0.05^2, 0.125^2]); % [m/s, m/s^2], initial state error covariance
P0_kalman_vertical = diag([0.015^2, 0.05^2, 0.125^2]); % [m, m/s, m/s^2], initial state error covariance

%% Low pass filters for various signals
fcut_lateral_angle = 80*(2*pi);
lpf_damping = sqrt(2)/2;
B1_lpf_lateral_angle = -2*exp(-lpf_damping*fcut_lateral_angle*sample_time)*cos(fcut_lateral_angle*sample_time*sqrt(1-lpf_damping^2));
B2_lpf_lateral_angle = exp(-2*lpf_damping*fcut_lateral_angle*sample_time);
A_lpf_lateral_angle = 1 + B1_lpf_lateral_angle + B2_lpf_lateral_angle;
fcut_fourbar_angles = 80*(2*pi);
lpf_damping = sqrt(2)/2;
B1_lpf_fourbar_angles = -2*exp(-lpf_damping*fcut_fourbar_angles*sample_time)*cos(fcut_fourbar_angles*sample_time*sqrt(1-lpf_damping^2));
B2_lpf_fourbar_angles = exp(-2*lpf_damping*fcut_fourbar_angles*sample_time);
A_lpf_fourbar_angles = 1 + B1_lpf_fourbar_angles + B2_lpf_fourbar_angles;
% underdamped filters
fcut_10hz_05d = 10*(2*pi);
lpf_damping = 0.5;
B1_lpf_10hz_05d = -2*exp(-lpf_damping*fcut_10hz_05d*sample_time)*cos(fcut_10hz_05d*sample_time*sqrt(1-lpf_damping^2));
B2_lpf_10hz_05d = exp(-2*lpf_damping*fcut_10hz_05d*sample_time);
A_lpf_10hz_05d = 1 + B1_lpf_10hz_05d + B2_lpf_10hz_05d;
fcut_30hz_05d = 30*2*pi;
lpf_damping = 0.5;
B1_lpf_30hz_05d = -2*exp(-lpf_damping*fcut_30hz_05d*sample_time)*cos(fcut_30hz_05d*sample_time*sqrt(1-lpf_damping^2));
B2_lpf_30hz_05d = exp(-2*lpf_damping*fcut_30hz_05d*sample_time);
A_lpf_30hz_05d = 1 + B1_lpf_30hz_05d + B2_lpf_30hz_05d;
% contact detection
fcut_contact = 95*(2*pi); 
lpf_damping = sqrt(2)/2;
B1_lpf_contact = -2*exp(-lpf_damping*fcut_contact*sample_time)*cos(fcut_contact*sample_time*sqrt(1-lpf_damping^2));
B2_lpf_contact = exp(-2*lpf_damping*fcut_contact*sample_time);
A_lpf_contact = 1 + B1_lpf_contact + B2_lpf_contact;


