function [cost, simout] = cost_fun(x,opts)
%% Initialization
start_tic = tic; cost = nan; simout = struct;

% Initialize Simulation Parameters
if iscell(opts); opts=opts{1}; end 

numParam = length(x);
if strcmpi(opts.optimize_ICs,'yes')
    param = x(1:50);
    paramIC = x(51:end);
    if numParam>6+50
        max_floor_diff=x(end);
    else
        max_floor_diff = opts.max_floor_diff;
    end
else
    paramIC = opts.ICs;
    param = x(1:50);
    if numParam>50
        max_floor_diff=x(end);
    else
        max_floor_diff = opts.max_floor_diff;
    end
end


IC_com_height = 0.1 + paramIC(6)*sind(paramIC(5));

steady_dist = opts.steady_dist;
SEA_swing_ctrl_on_off = opts.SEA_swing_ctrl_on_off;
eval(opts.ctrl_file)

ground = opts.ground;
noise_on_off = opts.noise_on_off;
noise_variance = opts.noise_variance;
noise_seed = opts.noise_seed;
eval(opts.sim_file)
eval(opts.vmc_file)


% % % Hacky way of defining ICs based on set_vmc_params.m
paramIC = ... [vx0, theta0, Lalpha0 (deg), LLength0 (m), Ralpha0 (deg), RLength0 (m)]
    [0; 0; ((2*pi-gamma_swing_thr)-pi/2)*180/pi; leg_length_max; ...
    ((2*pi-gamma_stance_thr)-pi/2)*180/pi; leg_length_min];
IC_com_height = 0.1 + paramIC(6)*sind(paramIC(5));
eval(cost_fun_opts.sim_file)
eval(cost_fun_opts.vmc_file)
% % %

%% Run Simulation
try
    load_system(opts.model_file);
if opts.run_in_rapid_mode == 0     % Normal Mode
    set_param(opts.model_file,'SimMechanicsOpenEditorOnUpdate','on');
    set_param(opts.model_file,'VisDuringSimulation','on');
    out = sim(opts.model_file,'SrcWorkspace','current','SimulationMode','normal');
elseif opts.run_in_rapid_mode==2   % Accelerator Mode
    set_param(opts.model_file,'SimMechanicsOpenEditorOnUpdate','off');
    set_param(opts.model_file,'VisDuringSimulation','off');
    out = sim(opts.model_file,'SrcWorkspace','current','SimulationMode','accelerator');
elseif opts.run_in_rapid_mode==1   % Rapid Accelerator Mode
    rtp = opts.rtp;
    set_param(opts.model_file,'SimMechanicsOpenEditorOnUpdate','off');
    set_param(opts.model_file,'InlineParams','on');
    set_param(opts.model_file,'VisDuringSimulation','off');
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
    out = sim(opts.model_file,'SimulationMode','rapid',...
        'RapidAcceleratorUpToDateCheck','off', ...
        'RapidAcceleratorParameterSets',parameterSet);
else
    disp('opts.run_in_rapid_mode incorrectly specified.'); return;
end

out_fieldnames = out.who;
for i=1:length(out_fieldnames)
    eval(['simout.',out_fieldnames{i},'=out.get(''',out_fieldnames{i},''');']);
    eval([out_fieldnames{i},'=out.get(''',out_fieldnames{i},''');']);
end

vavg = distTrav/twalk; 
simout.vavg = vavg;

catch exception
    warning(getReport(exception)); 
    disp('J = Nan');
    cost_eval_duration = toc(start_tic);
    disp(['Eval time: ', num2str(cost_eval_duration,4), 's| ',...
    'Walk time: ? (Simulation stopped)']);
    return;
end

%% Calculate cost
cFall = steady_dist - distTrav;
cSteady = -max_floor_diff;

if success % distTrav > steady_dist
    cost = cSteady;
else
    cost = cFall;
end


%% Print Results
stopStr1=[]; stopStr2=[]; stopStr3=[]; stopStr4=[];
if fallType(1); stopStr1 = '(Model Fell)'; end
if fallType(2); stopStr2 = '(Joint Overextension)'; end
if fallType(3); stopStr3 = '(Model Stuck)'; end
if ~any(fallType)
    stopStr4 = '(Model STEADY)'; 
end

cost_eval_duration = toc(start_tic);
disp(['Eval time: ', num2str(cost_eval_duration,4), 's| ',...
    'Walk time: ', num2str(twalk,4), 's (',num2str(twalk/cost_eval_duration*100,3),'%RT)| ',...
    '# Steps: ', num2str(numSteps,3), '| ',...
    'Dist: ', num2str(distTrav,4),'m| ',...
    'Avg Vel: ', num2str(vavg,3), '| ',...
    stopStr1,stopStr2,stopStr3,stopStr4,...
    char(13),'    stepLengthHist = [',num2str(stepLengthHist,3), '].',...
    char(13),'    J =  ',num2str(cost),...
    '. Max Ground Height = ',num2str(max_floor_diff*100,3),'cm']);

end


