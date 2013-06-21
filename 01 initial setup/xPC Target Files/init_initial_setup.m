%% Initializes constants required for running the initial_setup simulink model.

% remove any existing scopes
if(exist('tg','var')~=0) 
    scopes = tg.getscope();
    if ~isempty(scopes) 
        scopes.stop();
        tg.remscope(1:size(scopes,1));
    end
end
close all; clear all; path(pathdef); clc;

% Add all lower directories to path
addpath(genpath(pwd));

% Sensor and motor calibration and numerical derivative constants
daq_params;

% Simulation parameters
update_freq = 1000; %Hz
sample_time = 1/update_freq; % seconds

% Low pass filter cutoff frequency for unwrapping angles
fcut_unwrap = 50;

% Low pass filter cutoff frequency for velocities
fcut_velocity = 100;

% Control parameters
control_params;