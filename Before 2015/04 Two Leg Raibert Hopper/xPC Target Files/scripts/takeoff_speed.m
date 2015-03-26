% Find various quantities
phi = (pos.data(:,3)+pos.data(:,1))/2;
dphi = (pos.data(:,16)+pos.data(:,14))/2;
l = cos((pos.data(:,3)-pos.data(:,1))/2);
splay = (pos.data(:,3)-pos.data(:,1));
dsplay = (pos.data(:,16)-pos.data(:,14));
dl = -l_seg*dsplay.*sin(splay/2);
qPitch = pos.data(:,13);
dqPitch = pos.data(:,26);
gamma = phi + qPitch;
dgamma = dphi + dqPitch;
boom_roll = pos.data(:,11);

% Vertical velocity (assuming right foot on ground)
dy = -dl.*cos(gamma) + l.*dgamma.*sin(gamma) - d_com*dqPitch.*sin(qPitch);

plot_fscope('Takeoff Velocity',{t}, {dy},...
    {{'Measured'}},...
    {'Vertical Velocity'},{'Time (sec)'},...
    {'dy (m/s)'},{[-5, 5]},1,[]);

y = (l_boom+boom_mount_to_center_diagonal)*sin(boom_roll)+boom_height-boom_mount_to_com;

plot_fscope('COM Height',{t}, {y},...
    {{'Measured'}},...
    {'Vertical Height'},{'Time (sec)'},...
    {'y (m)'},{[0, 2]},1,[]);