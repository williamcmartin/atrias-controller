global gd
gd = guidata(control_console4);

% set(gd.edit2,'string','1'); % simulation time
% set(gd.edit3,'string','0.001'); % anim ts
% set(gd.edit4,'string','0.5'); % anim speed
% set(gd.edit5,'string','0.001'); % zero order hold delay

% controller
set(gd.s_mode, 'Value', 1); % fix s=0

set(gd.kp1,'string','100'); % kp1
set(gd.kp2,'string','180'); % kp2
set(gd.kp3,'string','1.5'); % kp3

set(gd.kd1,'string','50'); % kd1
set(gd.kd2,'string','100'); % kd2
set(gd.kd3,'string','0.1'); % kd3

set(gd.qT_offset,'string','0'); % qT offset
set(gd.epsilon,'string','0.1'); % epsilon
set(gd.pd,'Value',1); % pdCtrl
set(gd.fwd,'Value',0); % pdPlusFwdCtrl
set(gd.l2fh,'Value',0); % L2fhCtrl
set(gd.saturation1,'string','0'); % sat_max
set(gd.saturation2,'string','0'); % sat_min

set(gd.a3scuff,'string','0.3'); % a3scuff
set(gd.a4scuff,'string','0.3'); % a4scuff

set(gd.s_freq, 'String', '0');

set(gd.swap, 'Value', 4);
set(gd.swap_th1, 'String', '0.9');
set(gd.swap_th2, 'String', '-10');
set(gd.swap_th3, 'String', '-1');

set(gd.rightstance, 'Value', 1);
set(gd.leftstance, 'Value', 0);