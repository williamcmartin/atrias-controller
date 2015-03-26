% remove any existing scopes
% if(exist('tg','var')~=0) 
%     try
%         scopes = tg.getscope();
%         if ~isempty(scopes) 
%             scopes.stop();
%             tg.remscope(1:size(scopes,1));
%         end
%     catch err
%     end
% end
close all; clear all; path(pathdef); clc;

% Add all lower directories to path
addpath(genpath(pwd));
addpath('../00 Global Files/atrias-common/scripts/');
addpath('../00 Global Files/atrias-common/functions/');
addpath('../00 Global Files/atrias-common/models/');
addpath('../00 Global Files/atrias-common/gui/');
addpath('../00 Global Files/atrias-matlab/gui/');
addpath('../00 Global Files/atrias-matlab/atrias-robot/');

% Sensor and motor calibration and numerical derivative constants
daq_params;

% Model parameters
model_params;

% Actuator control parameters
actuator_control_params;

% Control parameters
control_params;