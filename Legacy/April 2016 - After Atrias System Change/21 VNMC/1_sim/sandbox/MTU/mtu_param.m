

% glutei muscles
FmaxGLU   = 1500; % maximum isometric force [N]
loptGLU   = 0.11; % optimum fiber length CE [m]
vmaxGLU   =   12; % maximum contraction velocity [lopt/s]
lslackGLU = 0.13; % tendon slack length [m]


% hip flexor muscles
FmaxHFL   = 2000; % maximum isometric force [N]
loptHFL   = 0.11; % optimum fiber length CE [m]
vmaxHFL   =   12; % maximum contraction velocity [lopt/s]
lslackHFL = 0.10; % tendon slack length [m]




% vasti muscles
FmaxVAS     = 6000; % maximum isometric force [N]
loptVAS     = 0.08; % optimum fiber length CE [m]
vmaxVAS     =   12; % maximum contraction velocity [lopt/s]
lslackVAS   = 0.23; % tendon slack length [m]


% excitation-contraction coupling
mtu_preA =  0.01; %[] preactivation
mtu_tau  =  0.01; %[s] delay time constant

% contractile element (CE) force-length relationship
mtu_w    =   0.56; %[lopt] width
mtu_c    =   0.05; %[]; remaining force at +/- width

% CE force-velocity relationship
mtu_N    =   1.5; %[Fmax] eccentric force enhancement
mtu_K    =     5; %[] shape factor

% Series elastic element (SE) force-length relationship
mtu_eref =  0.04; %[lslack] tendon reference strain