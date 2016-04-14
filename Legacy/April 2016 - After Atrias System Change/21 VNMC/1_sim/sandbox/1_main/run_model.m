%% Run ATRIAS_nmm.slx in workspace
clearvars; close all;
addpath('terrain');
addpath('params');
addpath('scripts');
addpath('functions');
addpath('models');

%% Run model in workspace, or through matlab function?
run_through_cost_fun = 0; % 0-test in workspace, 1-test through cost_fun

%% Set parameters
cost_fun_opts.run_in_rapid_mode = 0; %0:normal, 1:rapid, 2:accelerator
cost_fun_opts.rebuild = 1; %only applicable in rapid-mode
cost_fun_opts.visualize_motion = 1; %rapid-mode post-visualization
cost_fun_opts.max_floor_diff = 0.02;
cost_fun_opts.model_file = 'ATRIAS_vnmc';
cost_fun_opts.ctrl_file = 'set_control_params';
cost_fun_opts.sim_file = 'set_simulation_params';
cost_fun_opts.cost_fun_file = 'cost_fun';
cost_fun_opts.build_file = 'build_rtp';
cost_fun_opts.rtp_file = 'ATRIAS_rtp';
cost_fun_opts.vmc_file = 'set_vmc_params';

% NOTE: ICs WILL NOT AFFECT MODEL (REAL ICs based on set_vmc_params.m)
cost_fun_opts.ICs = ... [vx0,theta0,Lalpha0,LLength0,Ralpha0,RLength0]
    [1;1;1;1;1;1];
%     [1; 0; 80; 0.9; 100; 0.9];
%     [0; 0; 80; 0.8; 100; 0.8];

cost_fun_opts.optimize_ICs = 'no'; % yes if x = [param; paramIC]
cost_fun_opts.energy_cost = 'none'; % 'meta','mech','trqsq', or 'none'
cost_fun_opts.steady_dist = 10; %[m] walking distance to stop simulation
% load('terrain/terrain_rough_10_rTrack','rTrack');
% cost_fun_opts.ground = rTrack;
cost_fun_opts.ground = randomGroundProfile(2,0.1);
cost_fun_opts.plot_data_on_off = 0;
cost_fun_opts.noise_on_off = 0;
cost_fun_opts.noise_variance = 1*pi/180;
cost_fun_opts.noise_seed = 1;
cost_fun_opts.SEA_swing_ctrl_on_off = 0;

%% Load Control Parameters
% load('params/ATRIAS_nmm_trial22','bestever');
bestever.x = ones(50,1);
x = bestever.x;

%% Run simulation
start_tic = tic; 
if run_through_cost_fun
    if cost_fun_opts.rebuild
        steady_dist = cost_fun_opts.steady_dist;
        max_floor_diff = cost_fun_opts.max_floor_diff;
        ground = cost_fun_opts.ground;
        noise_on_off = cost_fun_opts.noise_on_off;
        noise_variance = cost_fun_opts.noise_variance;
        noise_seed = cost_fun_opts.noise_seed;
        SEA_swing_ctrl_on_off = cost_fun_opts.SEA_swing_ctrl_on_off;
        
        param = x;
        paramIC = cost_fun_opts.ICs;
        IC_com_height = 0.1 + paramIC(6)*sind(paramIC(5));
        
        eval(cost_fun_opts.ctrl_file)
        eval(cost_fun_opts.sim_file)
        eval(cost_fun_opts.vmc_file)
        
        % % % Hacky way of defining ICs based on VMC parameters:
        paramIC = ... [vx0, theta0, Lalpha0 (deg), LLength0 (m), Ralpha0 (deg), RLength0 (m)]
            [0; 0; ((2*pi-gamma_swing_thr)-pi/2)*180/pi; leg_length_max; ...
            ((2*pi-gamma_stance_thr)-pi/2)*180/pi; leg_length_min];
        IC_com_height = 0.1 + paramIC(6)*sind(paramIC(5));
        eval(cost_fun_opts.sim_file)
        eval(cost_fun_opts.vmc_file)        
        % % % 
        
        eval(cost_fun_opts.build_file);
        
        
        clear rtp
    end
    load(cost_fun_opts.rtp_file,'rtp');
    cost_fun_opts.rtp = rtp;
    
    [cost, simout] = cost_fun(x,cost_fun_opts);
%     simout
else % Run in base workspace
    steady_dist = cost_fun_opts.steady_dist;
    max_floor_diff = cost_fun_opts.max_floor_diff;
    ground = cost_fun_opts.ground;
    noise_on_off = cost_fun_opts.noise_on_off;
    noise_variance = cost_fun_opts.noise_variance;
    noise_seed = cost_fun_opts.noise_seed;
    SEA_swing_ctrl_on_off = cost_fun_opts.SEA_swing_ctrl_on_off;
    
    param = x;
    paramIC = cost_fun_opts.ICs;
    IC_com_height = 0.1 + paramIC(6)*sind(paramIC(5));
    
    eval(cost_fun_opts.ctrl_file)
    eval(cost_fun_opts.sim_file)
    eval(cost_fun_opts.vmc_file)
    
    % % % Hacky way of defining ICs based on VMC parameters:
    paramIC = ... [vx0, theta0, Lalpha0 (deg), LLength0 (m), Ralpha0 (deg), RLength0 (m)]
        [0; 0; ((2*pi-gamma_swing_thr)-pi/2)*180/pi; leg_length_max; ...
        ((2*pi-gamma_stance_thr)-pi/2)*180/pi; leg_length_min];
    IC_com_height = 0.1 + paramIC(6)*sind(paramIC(5));
    eval(cost_fun_opts.sim_file)
    eval(cost_fun_opts.vmc_file)
    % % %
    
    load_system(cost_fun_opts.model_file);
    if cost_fun_opts.run_in_rapid_mode == 0 % Normal Mode
        set_param(cost_fun_opts.model_file,'SimMechanicsOpenEditorOnUpdate','on');
        set_param(cost_fun_opts.model_file,'InlineParams','off');
        set_param(cost_fun_opts.model_file,'VisDuringSimulation','on');
        out = sim(cost_fun_opts.model_file,'SrcWorkspace','current','SimulationMode','normal');
    elseif cost_fun_opts.run_in_rapid_mode==2 % Accelerator Mode
        set_param(cost_fun_opts.model_file,'SimMechanicsOpenEditorOnUpdate','off');
        set_param(cost_fun_opts.model_file,'InlineParams','off');
        set_param(cost_fun_opts.model_file,'VisDuringSimulation','on');
        out = sim(cost_fun_opts.model_file,'SrcWorkspace','current','SimulationMode','accelerator');
    elseif cost_fun_opts.run_in_rapid_mode==1 % Rapid Accelerator Mode
        if cost_fun_opts.rebuild
            eval(cost_fun_opts.build_file);
            clear rtp
        end
        load(cost_fun_opts.rtp_file,'rtp');
        cost_fun_opts.rtp = rtp;
        set_param(cost_fun_opts.model_file,'SimMechanicsOpenEditorOnUpdate','off');
        set_param(cost_fun_opts.model_file,'InlineParams','on');
        set_param(cost_fun_opts.model_file,'VisDuringSimulation','off');
        parameterSet = Simulink.BlockDiagram.modifyTunableParameters(rtp,...
                'CtrlPar_theta0',CtrlPar_theta0,...
                'FPCtrlPar',FPCtrlPar,...
                'LLCtrlPar',LLCtrlPar,...
                'StCtrlPar',StCtrlPar,...
                'SwCtrlPar',SwCtrlPar,...
                'TrCtrlPar',TrCtrlPar,...
                'v_plateYaw',v_plateYaw,...
                'v_plateH',v_plateH,...
                'v_plateS',v_plateS,...
                'noise_variance',noise_variance);
        out = Simulink.SimulationOutput; %pre-allocate
        out = sim(cost_fun_opts.model_file,'SimulationMode','rapid',...
            'RapidAcceleratorUpToDateCheck','off', ...
            'RapidAcceleratorParameterSets',parameterSet);
    end
    
    out_fieldnames = out.who;
    for i=1:length(out_fieldnames)
        eval(['simout.',out_fieldnames{i},'=out.get(''',out_fieldnames{i},''');']);
        eval([out_fieldnames{i},'=out.get(''',out_fieldnames{i},''');']);
    end
%     q_anim_data = simout.q;

    stop_tic = toc(start_tic);
    disp(['Eval time: ', num2str(stop_tic,4), 's| ',...
    'Walk time: ', num2str(simout.twalk,4), 's (',num2str(simout.twalk/stop_tic*100,3),'%RT)| ']);
end

if cost_fun_opts.visualize_motion == 1
    steady_dist = cost_fun_opts.steady_dist;
    max_floor_diff = cost_fun_opts.max_floor_diff;
    ground = cost_fun_opts.ground;
    noise_on_off = cost_fun_opts.noise_on_off;
    noise_variance = cost_fun_opts.noise_variance;
    noise_seed = cost_fun_opts.noise_seed;
    
    param = x;
    paramIC = cost_fun_opts.ICs;
    eval(cost_fun_opts.ctrl_file)
    eval(cost_fun_opts.sim_file)
    
    % % % Hacky way of defining ICs based on VMC parameters:
    paramIC = ... [vx0, theta0, Lalpha0 (deg), LLength0 (m), Ralpha0 (deg), RLength0 (m)]
        [0; 0; ((2*pi-gamma_swing_thr)-pi/2)*180/pi; leg_length_max; ...
        ((2*pi-gamma_stance_thr)-pi/2)*180/pi; leg_length_min];
    IC_com_height = 0.1 + paramIC(6)*sind(paramIC(5));
    eval(cost_fun_opts.sim_file)
    eval(cost_fun_opts.vmc_file)
    % % %

    q = simout.q_cont;
    sim_t = simout.twalk;
    v_shin_initial_r = 0;
    v_thigh_initial_r = 0;
    
    % Moving-floor parameters
    delta_yaw0 = 0*pi/180; % Initial yaw should be positive
    initial_boom_yaw = initial_boom_yaw + delta_yaw0;
    q.signals.values(:,12) = q.signals.values(:,12) + delta_yaw0;
    yaw_period = 170*pi/180;
    
    height_speed = 1.25;
    tau_height = 0.1; % for filtering
    min_base_height = 0.5;
    min_height = -min_base_height; %r_ground_1m = 2.0526
    lead_yaw = -45*pi/180;
    lag_yaw = 340*pi/180 + lead_yaw;
%     yaw_min = initial_boom_yaw;
%     yaw_max = initial_boom_yaw + 30/l_boom;
    ts_anim = 0.0333; % (for 30 fps)
    
    
    sim('ATRIAS_anim_moving_floor');    
end

%% Post-processing (PLOTS)
% ts_data     = 0.01;
% figure('Name','Kinematic Data');
% 
% subplot(331);
% plot(ts_data*(1:length(simout.theta)),simout.theta*180/pi); 
% ylim([-30,30]);title('theta (deg)');
% 
% subplot(334); 
% plot(simout.dq.time,...
%     simout.dq.signals.values(:,12)*180/pi); ylim([0 50]); title('dyaw (deg/s)');
% 
% subplot(337); 
% plot(simout.q.time,...
%     simout.q.signals.values(:,11)*180/pi); title('roll (deg)');
% 
% subplot(332);
% plot(ts_data*(1:length(simout.Ralpha)),simout.Ralpha*180/pi); title('Ralpha (deg)');
% subplot(335);
% plot(ts_data*(1:length(simout.RLength)),simout.RLength); title('RLength (m)');
% subplot(333);
% plot(ts_data*(1:length(simout.Lalpha)),simout.Lalpha*180/pi); title('Lalpha (deg)');
% subplot(336);
% plot(ts_data*(1:length(simout.LLength)),simout.LLength); title('LLength (m)');
% 
% subplot(338)
% plot(simout.simout_animData.time,...
%     simout.simout_animData.signals.values(:,112)+0.1,...
%     simout.simout_animData.time,...
%     simout.simout_animData.signals.values(:,113)-0.1); ylim([-0.1 1.1]); 
%     ylim([-0.2 1.2]); title('Cont'); legend('R','L')

% subplot(339)
% plot(simout.simout_animData.time,...
%     simout.simout_animData.signals.values(:,113)-0.1); ylim([-0.1 1.1]); title('LCont');
% 













