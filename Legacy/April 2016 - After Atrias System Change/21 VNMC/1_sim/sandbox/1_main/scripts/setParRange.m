%
% setParRange.m
%   set parameter boundary
% 
% set:
%   parRange
%
% by Seungmoon Song
% Jan 2014
%


LN  = 1e3;  % large number;
SN  = eps;  % small number;


parBlCtrlRange(1,:) 	= [-LN LN];

parFPCtrlRange(1,:)     = [0 LN];
parFPCtrlRange(2,:)     = [0 LN];
parFPCtrlRange(3,:)     = [0 LN];

    leg_l   = [D12_T D12_S];
parLLCtrlRange(1,:)     = [SN (leg_l(1)+leg_l(2))/0.85];

parStCtrlRange(1,:)     = [-LN LN];
parStCtrlRange(2,:)     = [-LN LN];
parStCtrlRange(3,:)     = [-LN LN];
parStCtrlRange(4,:)     = [-LN LN];
parStCtrlRange(5,:)     = [-LN LN];
parStCtrlRange(6,:)     = [-LN LN];
parStCtrlRange(7,:)     = [-LN LN];
parStCtrlRange(8,:)     = [-LN LN];
parStCtrlRange(9,:)     = [-LN LN];
parStCtrlRange(10,:)    = [0 LN];
parStCtrlRange(11,:)    = [0 LN];
parStCtrlRange(12,:)    = [0 LN];
parStCtrlRange(13,:)    = [0 LN];
parStCtrlRange(14,:)    = [-LN LN];
parStCtrlRange(15,:)    = [0 LN];
parStCtrlRange(16,:)    = [-LN LN];
parStCtrlRange(17,:)    = [0 LN];
parStCtrlRange(18,:)    = [0 LN];
parStCtrlRange(19,:)    = [0 LN];
parStCtrlRange(20,:)    = [0 LN];
parStCtrlRange(21,:)    = [0 LN];
parStCtrlRange(22,:)    = [0 LN];
parStCtrlRange(23,:)    = [0 LN];
parStCtrlRange(24,:)    = [0 LN];
parStCtrlRange(25,:)    = [0 LN];
parStCtrlRange(26,:)    = [0 LN];
parStCtrlRange(27,:)    = [0 LN];
parStCtrlRange(28,:)    = [-LN LN];
parStCtrlRange(29,:)    = [0 LN];
parStCtrlRange(30,:)    = [0 LN];

parSwCtrlRange(1,:)     = [-LN LN];
parSwCtrlRange(2,:)     = [-LN LN];
parSwCtrlRange(3,:)     = [-LN LN];
parSwCtrlRange(4,:)     = [-LN LN];
parSwCtrlRange(5,:)     = [-LN LN];
parSwCtrlRange(6,:)     = [-LN LN];
parSwCtrlRange(7,:)     = [-LN LN];
parSwCtrlRange(8,:)     = [-LN LN];
parSwCtrlRange(9,:)     = [-LN LN];
parSwCtrlRange(10,:)    = [0 LN];
parSwCtrlRange(11,:)    = [0 LN];
parSwCtrlRange(12,:)    = [0 LN];
parSwCtrlRange(13,:)    = [0 LN];
parSwCtrlRange(14,:)    = [0 LN];
parSwCtrlRange(15,:)    = [0 LN];
parSwCtrlRange(16,:)    = [-LN LN];
parSwCtrlRange(17,:)    = [0 LN];
parSwCtrlRange(18,:)    = [0 LN];
parSwCtrlRange(19,:)    = [0 LN];
parSwCtrlRange(20,:)    = [0 LN];
parSwCtrlRange(21,:)    = [0 LN];
parSwCtrlRange(22,:)    = [0 LN];
parSwCtrlRange(23,:)    = [0 LN];
parSwCtrlRange(24,:)    = [0 LN];
parSwCtrlRange(25,:)    = [0 LN];
parSwCtrlRange(26,:)    = [-LN LN];
parSwCtrlRange(27,:)    = [0 LN];

parTrCtrlRange(1,:)     = [0 LN];
parTrCtrlRange(2,:)     = [0 LN];

parRange2D  = [parBlCtrlRange; parFPCtrlRange; parLLCtrlRange; ...
    parStCtrlRange; parSwCtrlRange; parTrCtrlRange];
       

parRange3D(1,:)         = [0 LN];
parRange3D(2,:)      	= [0 LN];
parRange3D(3,:)         = [0 LN];
parRange3D(4,:)         = [-LN LN];
parRange3D(5,:)         = [-LN LN];
parRange3D(6,:)         = [0 LN];
parRange3D(7,:)         = [0 LN];
parRange3D(8,:)         = [0 LN];
parRange3D(9,:)         = [0 LN];
parRange3D(10,:)        = [0 LN];
parRange3D(11,:)      	= [0 LN];
parRange3D(12,:)        = [0 LN];
parRange3D(13,:)    	= [-LN LN];
parRange3D(14,:)    	= [-LN LN];
parRange3D(15,:)        = [0 LN];
parRange3D(16,:)        = [0 LN];
parRange3D(17,:)        = [0 LN];
parRange3D(18,:)        = [0 LN];

parRange  	= [parRange2D; parRange3D];


