% Locally weighted projection regression for leg in flight
% Requires LWPR library in the MATLAB path

nIn = 2;
nOut = 2;
norm_in = 1;
norm_out = 1;
kernel = 'Gaussian';
diag_only = 1;
update_D = 1;
init_alpha = 40;

model = lwpr_init(nIn,nOut);
initial_distance_metric = [25 0; 0 25];
model = lwpr_set(model,'init_D',initial_distance_metric);
model = lwpr_set(model,'update_D',update_D);
