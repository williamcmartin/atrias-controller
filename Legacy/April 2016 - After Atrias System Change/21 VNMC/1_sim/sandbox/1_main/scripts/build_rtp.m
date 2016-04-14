%% Build rapid accelerator model

%% Build target
build_tic = tic;

load_system(cost_fun_opts.model_file);
set_param(cost_fun_opts.model_file,'SimMechanicsOpenEditorOnUpdate','off');
set_param(cost_fun_opts.model_file,'InlineParams','on');
set_param(cost_fun_opts.model_file,'VisDuringSimulation','off');

disp('Building rapid accelerator target...');
rtp = Simulink.BlockDiagram.buildRapidAcceleratorTarget(cost_fun_opts.model_file);

save(cost_fun_opts.rtp_file,'rtp');

build_toc = toc(build_tic); 
disp(['Build successful (',num2str(build_toc),'s).']);


