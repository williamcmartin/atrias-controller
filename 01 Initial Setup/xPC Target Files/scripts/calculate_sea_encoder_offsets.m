offsets = mean(deflections(t>25&t<100,:));
rad_per_tick = [LEG1_LEG_A_RAD_PER_CNT LEG1_LEG_B_RAD_PER_CNT LEG2_LEG_A_RAD_PER_CNT LEG2_LEG_B_RAD_PER_CNT];
toff = round(offsets./rad_per_tick);
% old + toff
% Nm offset: -4.40076140094052         -4.45867563745052          -3.1918937463528         -4.35126491189111