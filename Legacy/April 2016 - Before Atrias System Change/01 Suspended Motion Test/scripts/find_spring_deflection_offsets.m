% Determine calibration points for SEA springs
t = pos.data(:,end);
deflections = [pos.data(:,4)-pos.data(:,3) pos.data(:,2)-pos.data(:,1) pos.data(:,8)-pos.data(:,7) pos.data(:,6)-pos.data(:,5)];
start_time = 10;
t_select = t>=start_time;
figure('Name','Spring Deflections')
plot(t(t_select), deflections(t_select,:))
avg_deflections = mean(deflections(t_select,:));
tick_offsets = round(avg_deflections / 9.8039216e-09)

% Held at 140 and 220
% RB RF LB LF
%                -97779        3022      309802     -129457

% 20 degree triangle around 140 and 220
% RB RF LB LF
%               -103094       -2291      298095     -127895