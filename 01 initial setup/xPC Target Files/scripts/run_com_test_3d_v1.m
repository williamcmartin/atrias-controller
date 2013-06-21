% com_test_3d_v1
% hd_nominal = [0.5 0.5 0 0 0 0; 0 0 0 0.5 0.5 0; 0 0 1 0 0 0; -1 1 0 0 0 0; 0 0 0 -1 1 0; 0 0 0 0 0 1]\[180; 180; 6; 35; 45; 0]*pi/180
%%
model = 'com_test_3d_v1';

tg=xpc;
%tg.start();

scs=tg.getscope();
if isempty(scs);
    tg.addscope('target',1:6);
    scs = getscope(tg);
end

set(scs(1:6), ...
    'NumSamples', 200, ...
    'Decimation', 4, ...
    'TriggerMode', 'Freerun'...
    );

sid.medulla_cmd           = getparamid(tg, 'medulla_cmd', 'Value');
sid.sat_val_hip           = getparamid(tg, 'sat_val_hip', 'Value');
sid.sat_val_leg           = getparamid(tg, 'sat_val_leg', 'Value');
sid.torso_offset_sagittal = getparamid(tg, 'torso_offset_sagittal', 'Value');
sid.torso_offset_lateral  = getparamid(tg, 'torso_offset_lateral', 'Value');
% sid.leg_shape_offsets     = getparamid(tg, 'leg_shape_offsets', 'Value');
sid.trigger               = getparamid(tg, 'trigger', 'Value');

set_scopes(tg, 2);

setparam(tg, sid.sat_val_leg, 0);
setparam(tg, sid.sat_val_hip, 0);

%% Medulla Command
mcmd_list = [6 0 2];
for k=1:length(mcmd_list)
    mcmd=mcmd_list(k);
    setparam(tg, sid.medulla_cmd, mcmd);
    pause(0.1);
end

%%
sat_val_leg = 0;
sat_val_hip = 0;
setparamramp(tg, sid.sat_val_leg, sat_val_leg, 2);
setparamramp(tg, sid.sat_val_hip, sat_val_hip, 2);

%%
sat_val_leg = 0;
sat_val_hip = 3.5;
setparam(tg, sid.sat_val_leg, sat_val_leg);
setparam(tg, sid.sat_val_hip, sat_val_hip);


%%
torso_offset_sagittal = 0; % deg
setparamramp(tg, sid.torso_offset_sagittal, torso_offset_sagittal, 3);

%%
torso_offset_lateral = 0; % deg
setparamramp(tg, sid.torso_offset_lateral, torso_offset_lateral, 3);

%%
leg_shape_offsets = [0; 15]; % deg
setparamramp(tg, sid.leg_shape_offsets, leg_shape_offsets, 3);

%% Trigger
setparam(tg, sid.trigger, 1);
pause(0.1);
setparam(tg, sid.trigger, 0);

%% Mark error
setparam(tg, sid.trigger, -1);
pause(0.1);
setparam(tg, sid.trigger, 0);

%% Log
notes={'With Li-Po batteries'...
    };

%tg.stop();
log.time = tg.TimeLog();
log.output = tg.OutputLog();

filename = sprintf('Experiment03-%s-%s.mat', model, datestr(now,'yyyy_mm_dd-HH_MM'))
save(filename, 'log','notes');
%%
figure(1); plot(log.time, log.output(:,(1:13)))


%%
set_scopes(tg, 1); % control
%%
set_scopes(tg, 2);
%%
set_scopes(tg, 3);
