clear all; close all; clc;

dir_stl = '.\stl\';
dir_save = '.\mat\';

col_orange  = [1 0.5 0.15];
col_black   = [0 0 0];
col_gray1   = [.7 .7 .7];
col_gray2   = [.4 .4 .4];
col_gray3   = [.2 .2 .2];
col_darkRed  = [.9 0 0];

[v, f, n, c, stltitle] = stlread([dir_stl 'boom_base.stl']);
%%% set color
lC1     = length(c);
clear C1;
C1(:,1) = ones(lC1,1)*col_gray1(1);
C1(:,2) = ones(lC1,1)*col_gray1(2);
C1(:,3) = ones(lC1,1)*col_gray1(3);
%%% save new mesh
boom_base.F = f;
boom_base.V = v;
boom_base.C = C1;
save([dir_save 'boom_base'], 'boom_base');


[v, f, n, c, stltitle] = stlread([dir_stl 'boom_roll.stl']);
%%% set color
lC1     = length(c);
clear C1;
C1(:,1) = ones(lC1,1)*col_gray1(1);
C1(:,2) = ones(lC1,1)*col_gray1(2);
C1(:,3) = ones(lC1,1)*col_gray1(3);
%%% save new mesh
boom_roll.F = f;
boom_roll.V = v;
boom_roll.C = C1;
save([dir_save 'boom_roll'], 'boom_roll');


[v, f, n, c, stltitle] = stlread([dir_stl 'boom_yaw.stl']);
%%% set color
lC1     = length(c);
clear C1;
C1(:,1) = ones(lC1,1)*col_gray1(1);
C1(:,2) = ones(lC1,1)*col_gray1(2);
C1(:,3) = ones(lC1,1)*col_gray1(3);
%%% save new mesh
boom_yaw.F = f;
boom_yaw.V = v;
boom_yaw.C = C1;
save([dir_save 'boom_yaw'], 'boom_yaw');


[v, f, n, c, stltitle] = stlread([dir_stl 'four_bar_link.stl']);
%%% set color
lC1     = length(c);
clear C1;
C1(:,1) = ones(lC1,1)*col_black(1);
C1(:,2) = ones(lC1,1)*col_black(2);
C1(:,3) = ones(lC1,1)*col_black(3);
%%% save new mesh
four_bar_link.F = f;
four_bar_link.V = v;
four_bar_link.C = C1;
save([dir_save 'four_bar_link'], 'four_bar_link');


[v, f, n, c, stltitle] = stlread([dir_stl 'hip_shaft.stl']);
%%% set color
lC1     = length(c);
clear C1;
C1(:,1) = ones(lC1,1)*col_orange(1);
C1(:,2) = ones(lC1,1)*col_orange(2);
C1(:,3) = ones(lC1,1)*col_orange(3);
%%% save new mesh
hip_shaft.F = f;
hip_shaft.V = v;
hip_shaft.C = C1;
save([dir_save 'hip_shaft'], 'hip_shaft');


[v, f, n, c, stltitle] = stlread([dir_stl 'lower_leg.stl']);
%%% set color
lC1     = length(c);
clear C1;
C1(:,1) = ones(lC1,1)*col_black(1);
C1(:,2) = ones(lC1,1)*col_black(2);
C1(:,3) = ones(lC1,1)*col_black(3);
%%% save new mesh
lower_leg.F = f;
lower_leg.V = v;
lower_leg.C = C1;
save([dir_save 'lower_leg'], 'lower_leg');


[v, f, n, c, stltitle] = stlread([dir_stl 'shin.stl']);
%%% set color
lC1     = length(c);
clear C1;
C1(:,1) = ones(lC1,1)*col_black(1);
C1(:,2) = ones(lC1,1)*col_black(2);
C1(:,3) = ones(lC1,1)*col_black(3);
%%% save new mesh
shin.F = f;
shin.V = v;
shin.C = C1;
save([dir_save 'shin'], 'shin');


[v, f, n, c, stltitle] = stlread([dir_stl 'thigh.stl']);
%%% set color
lC1     = length(c);
clear C1;
C1(:,1) = ones(lC1,1)*col_black(1);
C1(:,2) = ones(lC1,1)*col_black(2);
C1(:,3) = ones(lC1,1)*col_black(3);
%%% save new mesh
thigh.F = f;
thigh.V = v;
thigh.C = C1;
save([dir_save 'thigh'], 'thigh');


[v, f, n, c, stltitle] = stlread([dir_stl 'torso.stl']);
%%% set color
lC1     = length(c);
clear C1;
C1(:,1) = ones(lC1,1)*col_gray2(1);
C1(:,2) = ones(lC1,1)*col_gray2(2);
C1(:,3) = ones(lC1,1)*col_gray2(3);
%%% save new mesh
torso.F = f;
torso.V = v;
torso.C = C1;
save([dir_save 'torso'], 'torso');