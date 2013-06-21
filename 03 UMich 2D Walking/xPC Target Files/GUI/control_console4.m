function varargout = control_console4(varargin)
% CONTROL_CONSOLE4 MATLAB code for control_console4.fig
%      CONTROL_CONSOLE4, by itself, creates a new CONTROL_CONSOLE4 or raises the existing
%      singleton*.
%
%      H = CONTROL_CONSOLE4 returns the handle to a new CONTROL_CONSOLE4 or the handle to
%      the existing singleton*.
%
%      CONTROL_CONSOLE4('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CONTROL_CONSOLE4.M with the given input arguments.
%
%      CONTROL_CONSOLE4('Property','Value',...) creates a new CONTROL_CONSOLE4 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before control_console4_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to control_console4_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help control_console4

% Last Modified by GUIDE v2.5 09-Oct-2012 16:24:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @control_console4_OpeningFcn, ...
                   'gui_OutputFcn',  @control_console4_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before control_console4 is made visible.
function control_console4_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to control_console4 (see VARARGIN)

%global simdata
%simdata_to_gui(hObject, simdata);

% Choose default command line output for control_console4
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes control_console4 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = control_console4_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function simulate_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sl = regexp(gcs, '^\w+(?=/|$)','match','once');
if isempty(sl) || strcmpi(sl, 'simulink')
    open rigid_ground_simulator
    sl = regexp(gcs, '^\w+(?=/|$)','match','once');
end
set_param(sl,'SimulationCommand','start');


% --- Executes on button press in pushbutton2.
function animate_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%anim_v06(t_sol,x_sol,t_sol(end),str2num(get(gd.edit3,'string')),str2num(get(gd.edit4,'string')))


% --- Executes on button press in pushbutton3.
function plotResult_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%plot_result;
%PlotData_sl;


function pause_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%set_param(gcs,'SimulationCommand','start');


function stop_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%set_param(gcs,'SimulationCommand','start');


% Generic edit CreateFcn callback
function generic_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit106 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
	set(hObject,'BackgroundColor','white');
end


% Generic edit Callback callback
function generic_edit_Callback(hObject, eventdata, handles)
% hObject    handle to edit106 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%value = str2double(get(hObject, 'String'));
%tag  = get(hObject, 'Tag');
%handles.simdata.(tag) = value;
%guidata(hObject, handles);
%global simdata
%simdata = gui_to_simdata(hObject, simdata);

% Generic numeric Callback callback
function generic_numeric_Callback(hObject, eventdata, handles)
% hObject    handle to current object (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%value = get(hObject, 'Value');
%tag  = get(hObject, 'Tag');
%handles.simdata.(tag) = value;
%guidata(hObject, handles);
%global simdata
%simdata = gui_to_simdata(hObject, simdata);

% Generic table CellEditCallback callback
function generic_table_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to current object (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%value = get(hObject, 'Data');
%tag  = get(hObject, 'Tag');
%handles.simdata.(tag) = value;
%guidata(hObject, handles);
%global simdata
%simdata = gui_to_simdata(hObject, simdata);

