%% Initializes constants required for running the initial_setup simulink model.

% remove any existing scopes
if(exist('tg','var')~=0) 
    try
        scopes = tg.getscope();
        if ~isempty(scopes) 
            scopes.stop();
            tg.remscope(1:size(scopes,1));
        end
    catch err
    end
end
close all; clear all; path(pathdef); clc;

% Add all lower directories to path
addpath(genpath(pwd));
addpath(genpath('../../00 Global Files'));

% Simulation parameters
update_freq = 1000; %Hz
sample_time = 1/update_freq; % seconds

% Sensor and motor calibration and numerical derivative constants
daq_params;

% Model parameters
model_params;

% Control parameters
control_params;