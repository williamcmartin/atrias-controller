w = [1; %theta
    ...
     70;
     -5;
     -5; %FP
     ...
     0.85; %LL
     ...
     5;
     5;
     5;
     1;
     8;
     2;
     1; %M1
     1.2;
     1; %M2
     2;
     2;
     1.1;
     2;
     1; %M3
     0.3;
     0.5;
     0.1;
     1;
     0.1; %M4
     0.1;
     0.1;
     0.1;
     ...
     1;
     1;
     1;
     1;
     1;
     2;
     12; %Swing Phase
     1;
     0.5;
     0.5;
     0.5;
     0.4;
     0.08;
     2.5;
     2;% Knee_iii
     6;
     0.65;
     0.4;
     0.4;
     0.1;
     0.3;
     1; %TR
     1];
      
load('FullAtrias_retrain_fix_trial5','bestever');
bestever.x = bestever.x(1:50)./w;
save('ATRIAS_seed3','bestever');
 











