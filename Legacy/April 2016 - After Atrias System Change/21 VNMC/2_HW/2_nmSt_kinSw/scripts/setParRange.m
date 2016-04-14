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
parLLCtrlRange(1,:)     = [SN (leg_l(1)+leg_l(2))/0.7];

parStCtrlRange(1,:)     = [-LN LN];
parStCtrlRange(2,:)     = [-LN LN];
parStCtrlRange(3,:)     = [-LN LN];
parStCtrlRange(4,:)     = [-LN LN];
parStCtrlRange(5,:)     = [-LN LN];
parStCtrlRange(6,:)     = [-LN LN];
parStCtrlRange(7,:)     = [0 LN];
parStCtrlRange(8,:)     = [0 LN];
parStCtrlRange(9,:)     = [0 LN];
parStCtrlRange(10,:)    = [0 LN];
parStCtrlRange(11,:)    = [0 LN];
parStCtrlRange(12,:)    = [0 LN];
parStCtrlRange(13,:)    = [0 LN];
parStCtrlRange(14,:)    = [0 LN];
parStCtrlRange(15,:)    = [0 LN];
parStCtrlRange(16,:)    = [0 LN];
parStCtrlRange(17,:)    = [0 LN];
parStCtrlRange(18,:)    = [0 LN];
parStCtrlRange(19,:)    = [0 LN];
parStCtrlRange(20,:)    = [0 LN];

parSwCtrlRange(1,:)     = [-LN LN];
parSwCtrlRange(2,:)     = [-LN LN];
parSwCtrlRange(3,:)     = [-LN LN];
parSwCtrlRange(4,:)     = [-LN LN];
parSwCtrlRange(5,:)     = [-LN LN];
parSwCtrlRange(6,:)     = [-LN LN];
parSwCtrlRange(7,:)     = [-LN LN];
parSwCtrlRange(8,:)     = [-LN LN];
parSwCtrlRange(9,:)     = [0 LN];
parSwCtrlRange(10,:)    = [0 LN];
parSwCtrlRange(11,:)    = [0 LN];
parSwCtrlRange(12,:)    = [0 LN];
parSwCtrlRange(13,:)    = [0 LN];
parSwCtrlRange(14,:)    = [0 LN];
parSwCtrlRange(15,:)    = [0 LN];
parSwCtrlRange(16,:)    = [0 LN];
parSwCtrlRange(17,:)    = [0 LN];
parSwCtrlRange(18,:)    = [0 LN];
parSwCtrlRange(19,:)    = [0 LN];
parSwCtrlRange(20,:)    = [0 LN];
parSwCtrlRange(21,:)    = [0 LN];
parSwCtrlRange(22,:)    = [0 LN];
parSwCtrlRange(23,:)    = [0 LN];
parSwCtrlRange(24,:)    = [0 LN];

parTrCtrlRange(1,:)     = [0 LN];
parTrCtrlRange(2,:)     = [0 LN];

parRange  = [parBlCtrlRange; parFPCtrlRange; parLLCtrlRange; ...
    parStCtrlRange; parSwCtrlRange; parTrCtrlRange];
       


