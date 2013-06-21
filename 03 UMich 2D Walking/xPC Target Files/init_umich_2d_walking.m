%% Initializes constants required for running the umich_2d_walking simulink model.

% remove any existing scopes
if(exist('tg','var')~=0) 
    scopes = tg.getscope();
    if ~isempty(scopes) 
        scopes.stop();
        tg.remscope(1:size(scopes,1));
    end
end

% Reset workspace
close all; clear all; path(pathdef); clc;

% Add all lower directories to path
addpath(genpath(pwd));

% Sensor and motor calibration and numerical derivative constants
daq_params;

% Mechanical params
mechanical_params;

% Control params
control_params;

% Simulation parameters
update_freq = 1000; %Hz
sample_time = 1/update_freq; % seconds

% Low pass filter cutoff frequency for unwrapping angles
fcut_unwrap = 50;

% Low pass filter cutoff frequency for velocities
fcut_velocity = 100;

% Load UMich model data
load data;
load data_compliant08May2012;
load fp_jessy_plus25deg;
prev_leg = 1;
h_alpha(3:4,:) = h_alpha(3:4,:) + 5*pi/180; 


% IIR filter parameter on qTdesired
alpha = 0.98; % rise time around 150 ms 

% Spawn GUI for controller
init_console4;

