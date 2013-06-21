% Load .FIG file as if it was a .MAT file
d = load('test.fig','-mat');
% Extract X data
xdata = d.hgS_070000.children(1).children(1).properties.XData;
% Extract Y data
ydata = d.hgS_070000.children(1).children(1).properties.YData;