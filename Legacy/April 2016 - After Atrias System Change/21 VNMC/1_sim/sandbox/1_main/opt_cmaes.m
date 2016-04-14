%% Parallel CMA-ES Optimization Script
clearvars; close all;
% warning off all; 
setEmail; tStart = tic;
addpath('terrain');
addpath('params');

%%
cost_fun_opts.run_in_rapid_mode = 1; %0:normal, 1:rapid, 2:accelerator
cost_fun_opts.rebuild = 1; %only applicable in rapid-mode
cost_fun_opts.visualize_motion = 1; %rapid-mode post-visualization
cost_fun_opts.max_floor_diff = 0;
cost_fun_opts.model_file = 'ATRIAS_vnmc';
cost_fun_opts.ctrl_file = 'set_control_params';
cost_fun_opts.sim_file = 'set_simulation_params';
cost_fun_opts.cost_fun_file = 'cost_fun';
cost_fun_opts.build_file = 'build_rtp';
cost_fun_opts.rtp_file = 'ATRIAS_rtp';
cost_fun_opts.vmc_file = 'set_vmc_params';
cost_fun_opts.ICs = ... [vx0,theta0,Lalpha0,LLength0,Ralpha0,RLength0]
    [1.25; 0; 80; 0.9; 100; 0.9];
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

%% Optimization Options
computerName = 'COMPUTER_NAME';             % Computer
totalIterations = 400;                      % Iterations
numResumes = 4;                             % # Pauses
popSize = 16;                               % Pop size
runParallel = 1;
trial = 26;  %increments
saveFileName = [cost_fun_opts.model_file,'_trial',num2str(trial)];
modelname = cost_fun_opts.model_file;    

%% Load Seed Parameters
load('params/ATRIAS_nmm_trial22','bestever');
x = bestever.x(1:50);
initParam = x;
sigmaTol = 1e-4;
if strcmpi(cost_fun_opts.optimize_ICs,'yes')
    sigma = [0.05*abs(initParam(1:50)); 0.01*abs(initParam(51:56)); 0.01];
else
    sigma = 0.01*abs(initParam);
end
sigma(sigma<sigmaTol) = sigmaTol;


%% Build (for rapid mode)
if cost_fun_opts.rebuild && cost_fun_opts.run_in_rapid_mode == 1
    steady_dist = cost_fun_opts.steady_dist;
    max_floor_diff = cost_fun_opts.max_floor_diff;
    ground = cost_fun_opts.ground;
    noise_on_off = cost_fun_opts.noise_on_off;
    noise_variance = cost_fun_opts.noise_variance;
    noise_seed = cost_fun_opts.noise_seed;
    SEA_swing_ctrl_on_off = cost_fun_opts.SEA_swing_ctrl_on_off;
    
    param = x;
    paramIC = cost_fun_opts.ICs;
    
    eval(cost_fun_opts.ctrl_file)
    eval(cost_fun_opts.sim_file)
    eval(cost_fun_opts.build_file);
    clear rtp
end
load(cost_fun_opts.rtp_file,'rtp');
cost_fun_opts.rtp = rtp;


%% Optimization
global simFile                                          
simFile = cost_fun_opts.cost_fun_file;      

while exist(fullfile('params',saveFileName,'.mat'), 'file')
    trial = trial + 1;
    if trial < 10
        saveFileName = [saveFileName(1:end-1),num2str(trial)];
    else
        saveFileName = [saveFileName(1:end-2),num2str(trial)];
    end    
end
saveFileName = [saveFileName , '.mat'];
            
if ~isempty(gcp('nocreate')) && ~runParallel; 
    delete(gcp);
elseif isempty(gcp('nocreate')) && runParallel
    parpool;
end      

numIterations = floor(totalIterations/numResumes);
failed = 0;

for iteration = 1 : numResumes
    try
        if iteration == 1
            opts.LBounds = -Inf(size(initParam(:,1)));
            opts.UBounds = Inf(size(initParam(:,1)));
            opts.stopFitness = 0;
            if strcmpi(cost_fun_opts.optimize_ICs,'yes')
                opts.LBounds(54) = 0;
                opts.LBounds(56) = 0;
                opts.UBounds(54) = 1.11;
                opts.UBounds(56) = 1.11;
            end
            opts.StopIter = numIterations;
            opts.LogPlot = 1;
            opts.DispModulo = 1;
            opts.EvalParallel = runParallel;
            opts.MaxIter = totalIterations;
            opts.PopSize = popSize;
            opts.LogFilenamePrefix = [modelname '_'];
            opts.SaveFilename = saveFileName;
            opts.StopOnWarnings = 'no';
            
            [xmin, fmin, counteval, stopflag, out, bestever ] = ...
                cmaes('par_objFn', initParam, sigma, opts, cost_fun_opts);
            
        else
            opts.Resume = 1;
            
            [xmin, fmin, counteval, stopflag, out, bestever ] = ...
                cmaes('par_objFn', initParam, sigma, opts, cost_fun_opts);
        end
        save(fullfile('params',[saveFileName(1:end-4),'_resume',num2str(iteration)]),'bestever');
    catch exception
        warning(getReport(exception));
        tFinish = toc(tStart);    
        try
        sendmail('ztbatts@gmail.com', ['Optimization Failed on ', computerName], ...
            [getReport(exception),char(13),...
            'Failure took ', ...                              
            num2str(tFinish/3600), ' hours. ']);
        catch e
           warning('Email did not send correctly') 
        end
        failed = 1;
        return;
    end
    
    tFinish = toc(tStart);
    try
    sendmail('ztbatts@gmail.com', ...                          
        ['Optimization Partly Complete on ', computerName], ...      
        ['Optimization has taken ', ...                              
        num2str(tFinish/3600), ' hours so far. Currently on iteration ',...
        num2str(iteration), ' out of ', num2str(numResumes),'.',...
        'Current bestever: ', num2str(bestever.f)]);
    catch e
        warning('Email did not send correctly')
    end
end       
        
tFinish = toc(tStart);
try
sendmail('ztbatts@gmail.com', ...
    ['Optimization Complete on ', computerName], ...
    ['Optimization took ', ...
    num2str(tFinish/3600), ' hours. ',...
    'Bestever: ', num2str(bestever.f)]);
catch e
    warning('Email did not send corrently')
end

if ~isempty(gcp('nocreate'))
    delete(gcp);    
end

save(['params/',saveFileName]);

