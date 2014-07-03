offsets = mean(deflections(2000:10000,:));
% RB RF LB LF
rad_per_tick = [LEG1_LEG_A_RAD_PER_CNT LEG1_LEG_B_RAD_PER_CNT LEG2_LEG_A_RAD_PER_CNT LEG2_LEG_B_RAD_PER_CNT];
toff = round(offsets./rad_per_tick);
% old + toff