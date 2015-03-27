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
addpath('../../atrias-common/scripts/');
addpath('../../atrias-common/functions/');
addpath('../../atrias-common/models/');
addpath('../../atrias-common/gui/');
addpath('../../atrias-matlab/gui/');
addpath('../../atrias-matlab/atrias-robot/');

% Sensor and motor calibration and numerical derivative constants
daq_params;

% Model parameters
model_params;

% Actuator control parameters
actuator_control_params;

% Control parameters
control_params;