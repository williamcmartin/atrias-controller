%% File: Symbolic_ATRIAS3D_Lagrange_v10.m
%%
%%
clc;
clear all;
tic;

% biped parameters
syms L1 L2 L3 L4 LT m1 m2 m3 m4
syms ellhcm1 ellhcm2 ellhcm3 ellhcm4
syms ellvcm1 ellvcm2 ellvcm3 ellvcm4
syms Jcm1 Jcm2 Jcm3 Jcm4
syms Jcmx1 Jcmx2 Jcmx3 Jcmx4 Jcmy1 Jcmy2 Jcmy3 Jcmy4   %% Jcmxi = Jcmyi = Jcmi
syms Jcmz1 Jcmz2 Jcmz3 Jcmz4

syms g W mH JcmH ellhcmH ellvcmH JcmxH JcmyH JcmzH
syms LT mT JcmT ellhcmT ellvcmT JcmxT JcmyT JcmzT

syms Jrotor1 Jrotor2 Jrotor3 Jgear1 Jgear2 Jgear3 r1 r2 r3

if 1
    [g mTotal m1 m2 m3 m4 mT mH L1 L2 L3 L4 LT W] = ...
        modelParametersAtriasMassLength;
    %%%%
    [ellhcm1 ellhcm2 ellhcm3 ellhcm4 ellvcm1 ellvcm2 ellvcm3 ellvcm4 ...
        ellhcmT ellvcmT ellhcmH ellvcmH] = ...
        modelParametersAtriasLinkCoMPositions;
    %%%%
    [Jcmx1 Jcmx2 Jcmx3 Jcmx4 Jcmy1 Jcmy2 Jcmy3 Jcmy4 Jcmz1 Jcmz2 ...
        Jcmz3 Jcmz4 JcmxT JcmyT JcmzT JcmxH JcmyH JcmzH] = ...
        modelParametersAtriasLinkInertia;
    %%%%
    [Jrotor1 Jrotor2 Jrotor3 Jgear1 Jgear2 Jgear3 r1 r2 r3 K1 K2 ...
        Kd1 Kd2] = modelParametersAtriasActuatorsSprings;

    Params='_FixParams';
else
    Params='';
end

% Generalized coordinate
syms xT yT zT qzT qyT qxT        %% torso translational and rotational coordinates
syms dxT dyT dzT dqzT dqyT dqxT

syms q1R q2R q3R q1L q2L q3L     %% right & left leg joint angles
syms dq1R dq2R dq3R dq1L dq2L dq3L

syms x0 y0 z0 qz0 qy0 qx0       %% right foot position and rotational angles
syms dx0 dy0 dz0 dqz0 dqy0 dqx0

syms qgr1R qgr2R  dqgr1R dqgr2R     %gear reducer coordinates; are probably better numerically
syms qgr1L qgr2L  dqgr1L dqgr2L    %than the motor coordinates, due to the low inertia of the rotors


model_choices={'Stance_RightLegZero' 'Stance_LeftLegZero' 'TorsoXYZ' ... % 1 2 and 3
    'StanceRightImpactLeft' 'StanceLeftImpactRight' ...                  % 4 and 5
    'PointsOnly4AnimatorLeftLegStance' 'PointsOnly4AnimatorRightLegStance'};  % 6 and 7 % add to list as needed
%
which_model=char(model_choices(1));  %choose which model to build
springs = 0; % 0 = no springs

switch which_model           %add cases as needed

    case {'TorsoXYZ'}  % Standard SS Model
        if springs
            q = [xT; yT; zT; qzT; qyT; qxT; q1R; q2R; q1L; q2L; qgr1R; qgr2R; q3R; qgr1L; qgr2L; q3L];
            dq= [dxT; dyT; dzT; dqzT; dqyT; dqxT; dq1R; dq2R; dq1L; dq2L; dqgr1R; dqgr2R; dq3R; dqgr1L; dqgr2L; dq3L];
            disp('Building Flight Phase Model with Springs and with Cartesian Frame Attached to the Base of Torso')
        else
            qgr1R=q1R; qgr2R=q2R; qgr1L=q1L; qgr2L=q2L;
            dqgr1R=dq1R; dqgr2R=dq2R; dqgr1L=dq1L; dqgr2L=dq2L;
            q = [xT; yT; zT; qzT; qyT; qxT; q1R; q2R; q3R; q1L; q2L; q3L];
            dq= [dxT; dyT; dzT; dqzT; dqyT; dqxT; dq1R; dq2R; dq3R; dq1L; dq2L; dq3L];
            disp('Building Flight Phase Model without Springs and with Cartesian Frame Attached to the Base of Torso')
        end
    otherwise
        if springs
            q = [qzT; qyT; qxT; q1R; q2R; q1L; q2L; qgr1R; qgr2R; q3R; qgr1L; qgr2L; q3L];
            dq= [dqzT; dqyT; dqxT; dq1R; dq2R; dq1L; dq2L; dqgr1R; dqgr2R; dq3R; dqgr1L; dqgr2L; dq3L];
            disp('Building a Single Support Model with Springs')
        else
            qgr1R=q1R; qgr2R=q2R; qgr1L=q1L; qgr2L=q2L;
            dqgr1R=dq1R; dqgr2R=dq2R; dqgr1L=dq1L; dqgr2L=dq2L;
            %
            q = [qzT; qyT; qxT; q1R; q2R; q3R; q1L; q2L; q3L];
            dq= [dqzT; dqyT; dqxT; dq1R; dq2R; dq3R; dq1L; dq2L; dq3L];
            disp('Building a Single Support Model without Springs')
        end
end

%%  motor and gear coordinates
qm1R = r1*qgr1R; qm2R = r2*qgr2R;  qgr3R =q3R; qm3R = r3*qgr3R;
qm1L = r1*qgr1L; qm2L = r2*qgr2L;  qgr3L =q3L; qm3L = r3*qgr3L;

dqm1R = r1*dqgr1R; dqm2R = r2*dqgr2R;  dqgr3R =dq3R; dqm3R = r3*dqgr3R;
dqm1L = r1*dqgr1L; dqm2L = r2*dqgr2L;  dqgr3L =dq3L; dqm3L = r3*dqgr3L;


Mtotal = mT + 2*(mH + m1 + m2 + m3 + m4);

%% inertia matrices
syms IcmT IcmH Icm1 Icm2 Icm3 Icm4

IcmT = [JcmxT 0 0; 0 JcmyT 0; 0 0 JcmzT];
IcmH = [JcmxH 0 0; 0 JcmyH 0; 0 0 JcmzH];
Icm1 = [Jcmx1 0 0; 0 Jcmy1 0; 0 0 Jcmz1];
Icm2 = [Jcmx2 0 0; 0 Jcmy2 0; 0 0 Jcmz2];
Icm3 = [Jcmx3 0 0; 0 Jcmy3 0; 0 0 Jcmz3];
Icm4 = [Jcmx4 0 0; 0 Jcmy4 0; 0 0 Jcmz4];

Igr1 = [Jgear1 0 0; 0 0 0; 0 0 0];
Igr2 = [Jgear2 0 0; 0 0 0; 0 0 0];
Igr3 = [0 0 0; 0 Jgear3 0; 0 0 0];

Imot1 = [Jrotor1 0 0; 0 0 0; 0 0 0];
Imot2 = [Jrotor2 0 0; 0 0 0; 0 0 0];
Imot3 = [0 0 0; 0 Jrotor3 0; 0 0 0];


%% basic rotational matrices & skew symmetric operations

Rx = inline('[1 0 0 ; 0 cos(t) -sin(t); 0 sin(t) cos(t)]');
Ry = inline('[cos(t) 0 sin(t); 0 1 0 ; -sin(t) 0 cos(t)]');
Rz = inline('[cos(t) -sin(t) 0; sin(t) cos(t) 0; 0 0 1]');

Ss = inline('[0 -x(3) x(2); x(3) 0 -x(1); -x(2) x(1) 0]');   % packing to a skew-symmetric matrix. Here, x is a 3-dim vector
Us = inline('[x(3,2); x(1,3); x(2,1)]');                     % unpacking skew-symmetric matrix operation. Here, x is a 3 x 3 matrix


toc,tic
disp('Step 0: Compute the actuation matrix B');

qa = [qm1R; qm2R; qm3R; qm1L; qm2L; qm3L];
B = jacobian(qa, q);
B = B.';   % same as B = transpose(B)
B

toc, tic
save Mat\TempSymbolicData
disp('Step 1: Compute rotational matrices and angular velocities');

% rotational matrices and angular velocities
syms RA

RA = [1 0 0; 0 1 0; 0 0 1];    % Reference coordinate RA at Right Foot
R0 = RA;

w0 = R0(:,3)*dqzT;
R0 = R0*Rz(qzT);

w0 = w0 + R0(:,2)*dqyT;
R0 = R0*Ry(qyT);

w0 = w0 + R0(:,1)*dqxT;      w0 = simplify(w0);     % torso angular velocity
R0 = R0*Rx(qxT);                                    % torso ratational matrix

if 0  %% same result
    dR0 = diff(R0,'qzT')*dqzT + diff(R0,'qyT')*dqyT + diff(R0,'qxT')*dqxT;
    S0 = transpose(R0)*dR0;
    S0 = simplify(S0);
    Omega0 = [S0(3,2); S0(1,3); S0(2,1)];
    simplify(R0*Omega0- w0)
end

wHR = w0 + R0(:,2)*dq3R;     wHR = simplify(wHR);
R3 = R0*Ry(q3R);
R3m3 = R0*Ry(qm3R);
R3gr3 = R0*Ry(qgr3R);

if 0  %% same result
    dR3 = diff(R3,'qzT')*dqzT + diff(R3,'qyT')*dqyT + diff(R3,'qxT')*dqxT + diff(R3, 'q3R')*dq3R;
    S3 = transpose(R3)*dR3;
    S3 = simplify(S3);
    Omega3 = [S3(3,2); S3(1,3); S3(2,1)];
    simplify(R3*Omega3-wHR)
end

%Right Side of Robot
w1R = wHR + R3(:,1)*dq1R;    w1R = simplify(w1R);
w4R = w1R;
R1 = R3*Rx(q1R);
R1m1 = R3*Rx(qm1R);
R1gr1 = R3*Rx(qgr1R);

w2R = wHR + R3(:,1)*dq2R;    w2R = simplify(w2R);
w3R = w2R;
R2 = R3*Rx(q2R);
R2m2 = R3*Rx(qm2R);
R2gr2 = R3*Rx(qgr2R);

%Motors and Gears on Right Side
wm3R = w0 + R0(:,2)*dqm3R;     wm3R = simplify(wm3R);
wgr3R = w0 + R0(:,2)*dqgr3R;   wgr3R = simplify(wgr3R);

wm1R =  wHR + R3(:,1)*dqm1R;     wm1R = simplify(wm1R);
wgr1R =  wHR + R3(:,1)*dqgr1R;   wgr1R = simplify(wgr1R);

wm2R =  wHR + R3(:,1)*dqm2R ;    wm2R = simplify(wm2R);
wgr2R =  wHR + R3(:,1)*dqgr2R;   wgr2R = simplify(wgr2R);

%Left Side of Robot
wHL = w0 - R0(:,2)*dq3L;     wHL = simplify(wHL);
R4 = R0*Ry(-q3L);
R4m3 = R0*Ry(-qm3L);
R4gr3 = R0*Ry(-qgr3L);

w1L = wHL + R4(:,1)*dq1L;    w1L = simplify(w1L);
w4L = w1L;
R5 = R4*Rx(q1L);
R5m1 = R4*Rx(qm1L);
R5gr1 = R4*Rx(qgr1L);

w2L = wHL + R4(:,1)*dq2L;    w2L = simplify(w2L);
w3L = w2L;
R6 = R4*Rx(q2L);
R6m2 = R4*Rx(qm2L);
R6gr2 = R4*Rx(qgr2L);

%Motors and Gears on Left Side
wm3L = w0 + R0(:,2)*dqm3L;     wm3L = simplify(wm3L);
wgr3L = w0 + R0(:,2)*dqgr3L;   wgr3L = simplify(wgr3L);

wm1L =  wHL + R4(:,1)*dqm1L;     wm1L = simplify(wm1L);
wgr1L =  wHL + R4(:,1)*dqgr1L;   wgr1L = simplify(wgr1L);

wm2L =  wHL + R4(:,1)*dqm2L;     wm2L = simplify(wm2L);
wgr2L =  wHL + R4(:,1)*dqgr2L;   wgr2L = simplify(wgr2L);

toc, tic
save Mat\TempSymbolicData
disp('Step 2: Compute the rotational kinetic energy');

RKET =  (1/2)*transpose(w0)*R0*IcmT*transpose(R0)*w0;     RKET = simplify(RKET);
RKEHR = (1/2)*transpose(wHR)*R3*IcmH*transpose(R3)*wHR;   RKEHR = simplify(RKEHR);
RKE1R = (1/2)*transpose(w1R)*R1*Icm1*transpose(R1)*w1R;   RKE1R = simplify(RKE1R);
RKE2R = (1/2)*transpose(w2R)*R2*Icm2*transpose(R2)*w2R;   RKE2R = simplify(RKE2R);
RKE3R = (1/2)*transpose(w3R)*R2*Icm3*transpose(R2)*w3R;   RKE3R = simplify(RKE3R);
RKE4R = (1/2)*transpose(w4R)*R1*Icm4*transpose(R1)*w4R;   RKE4R = simplify(RKE4R);

RKEHL = (1/2)*transpose(wHL)*R4*IcmH*transpose(R4)*wHL;   RKEHL = simplify(RKEHL);
RKE1L = (1/2)*transpose(w1L)*R5*Icm1*transpose(R5)*w1L;   RKE1L = simplify(RKE1L);
RKE2L = (1/2)*transpose(w2L)*R6*Icm2*transpose(R6)*w2L;   RKE2L = simplify(RKE2L);
RKE3L = (1/2)*transpose(w3L)*R6*Icm3*transpose(R6)*w3L;   RKE3L = simplify(RKE3L);
RKE4L = (1/2)*transpose(w4L)*R5*Icm4*transpose(R5)*w4L;   RKE4L = simplify(RKE4L);


RKE_Links =              RKET + RKEHR + RKEHL;
RKE_Links = RKE_Links  + RKE1R + RKE2R + RKE3R + RKE4R;
RKE_Links = RKE_Links  + RKE1L + RKE2L + RKE3L + RKE4L;

RKE_Links = simplify(RKE_Links);

toc, tic
save Mat\TempSymbolicData
disp('Step 2b: Compute motor and gear Kinetic Energy');
%Motors and Gear Reducers

if 0
    RKEm3R =  (1/2)*transpose(wm3R)*R3m3*Imot3*transpose(R3m3)*wm3R;      RKEm3R = simplify(RKEm3R);
    RKEgr3R = (1/2)*transpose(wgr3R)*R3gr3*Igr3*transpose(R3gr3)*wgr3R;   RKEgr3R = simplify(RKEgr3R);
    RKEm3L =  (1/2)*transpose(wm3L)*R4m3*Imot3*transpose(R4m3)*wm3L;      RKEm3L = simplify(RKEm3L);
    RKEgr3L = (1/2)*transpose(wgr3L)*R4gr3*Igr3*transpose(R4gr3)*wgr3L;   RKEgr3L = simplify(RKEgr3L);

    RKEm2R =  (1/2)*transpose(wm2R)*R2m2*Imot2*transpose(R2m2)*wm2R;      RKEm2R = simplify(RKEm2R);
    RKEgr2R = (1/2)*transpose(wgr2R)*R2gr2*Igr2*transpose(R2gr2)*wgr2R;   RKEgr2R = simplify(RKEgr2R);
    RKEm2L =  (1/2)*transpose(wm2L)*R6m2*Imot2*transpose(R6m2)*wm2L;      RKEm2L = simplify(RKEm2L);
    RKEgr2L = (1/2)*transpose(wgr2L)*R6gr2*Igr2*transpose(R6gr2)*wgr2L;   RKEgr2L = simplify(RKEgr2L);

    RKEm1R =  (1/2)*transpose(wm1R)*R1m1*Imot1*transpose(R1m1)*wm1R;      RKEm1R = simplify(RKEm1R);
    RKEgr1R = (1/2)*transpose(wgr1R)*R1gr1*Igr1*transpose(R1gr1)*wgr1R;   RKEgr1R = simplify(RKEgr1R);
    RKEm1L =  (1/2)*transpose(wm1L)*R5m1*Imot1*transpose(R5m1)*wm1L;      RKEm1L = simplify(RKEm1L);
    RKEgr1L = (1/2)*transpose(wgr1L)*R5gr1*Igr1*transpose(R5gr1)*wgr1L;   RKEgr1L = simplify(RKEgr1L);

    RKE_MotorsGears =                   RKEm3R + RKEgr3R + RKEm3L + RKEgr3L;
    RKE_MotorsGears = RKE_MotorsGears + RKEm2R + RKEgr2R + RKEm2L + RKEgr2L;
    RKE_MotorsGears = RKE_MotorsGears + RKEm1R + RKEgr1R + RKEm1L + RKEgr1L;

    RKE_MotorsGears = simplify(RKE_MotorsGears);

elseif 1
    RKEm3R =  (1/2)*dqm3R*Jrotor3*dqm3R;
    RKEgr3R = (1/2)*dqgr3R*Jgear3*dqgr3R;
    RKEm3L =  (1/2)*dqm3L*Jrotor3*dqm3L;
    RKEgr3L = (1/2)*dqgr3L*Jgear3*dqgr3L;

    RKEm2R =  (1/2)*dqm2R*Jrotor2*dqm2R;
    RKEgr2R = (1/2)*dqgr2R*Jgear2*dqgr2R;
    RKEm2L =  (1/2)*dqm2L*Jrotor2*dqm2L;
    RKEgr2L = (1/2)*dqgr2L*Jgear2*dqgr2L;

    RKEm1R =  (1/2)*dqm1R*Jrotor1*dqm1R;
    RKEgr1R = (1/2)*dqgr1R*Jgear1*dqgr1R;
    RKEm1L =  (1/2)*dqm1L*Jrotor1*dqm1L;
    RKEgr1L = (1/2)*dqgr1L*Jgear1*dqgr1L;

    RKE_MotorsGears =                   RKEm3R + RKEgr3R + RKEm3L + RKEgr3L;
    RKE_MotorsGears = RKE_MotorsGears + RKEm2R + RKEgr2R + RKEm2L + RKEgr2L;
    RKE_MotorsGears = RKE_MotorsGears + RKEm1R + RKEgr1R + RKEm1L + RKEgr1L;

    RKE_MotorsGears = simplify(RKE_MotorsGears);
else
    RKE_MotorsGears=0;
end

%RKE Total
RKE=RKE_Links + RKE_MotorsGears; RKE=simple(RKE);

toc, tic
save Mat\TempSymbolicData
disp('Step 3A: Compute joint position vectors & CoM positions & velocities');

% compute the right foot position

p0 = [xT; yT; zT];
% Set XYZ coordinate position. Leave angles at the torso
switch which_model            %add cases as needed
    case {'Stance_RightLegZero'}  % Standard Stance on Right Leg
        pHR = p0 + R3*[W; 0; 0];
        p1R = pHR + R1*[0; 0; L1];
        p2R = pHR + R2*[0; 0; L2];
        p3R = p1R + R2*[0; 0; L3];
        p4R = p2R + R1*[0; 0; L4];
        p0 = p0-p4R;                    p0 = simplify(p0);   %p0(1)=p0(1)+2*W;
        disp('Building Model with Cartesian position of Right Foot = [0;0;0]')
        Model='Right';
    case {'Stance_LeftLegZero'}  % Standard Stance on Left Leg
        pHL = p0 + R4*[-W; 0; 0];
        p1L = pHL + R5*[0; 0; L1];
        p2L = pHL + R6*[0; 0; L2];
        p3L = p1L + R6*[0; 0; L3];
        p4L = p2L + R5*[0; 0; L4];
        p0 = p0-p4L;                    p0 = simplify(p0);
        disp('Building Model with Cartesian position of Left Foot = [0;0;0]')
        Model='Left'
    case {'PointsOnly4AnimatorRightLegStance', 'StanceRightImpactLeft'}
        syms xR yR zR dxR dyR dzR
        q=[q; xR; yR; zR]; dq=[dq; dxR; dyR; dzR];
        pHR = p0 + R3*[W; 0; 0];
        p1R = pHR + R1*[0; 0; L1];
        p2R = pHR + R2*[0; 0; L2];
        p3R = p1R + R2*[0; 0; L3];
        p4R = p2R + R1*[0; 0; L4];
        p0 = p0-p4R;                    p0 = simplify(p0);   p0 = p0 + [xR; yR; zR];
        disp('Building Model with Cartesian Frame [xR; yR; zR] Attached to the foot of the Right Leg')
        Model='StanceRight';
    case {'PointsOnly4AnimatorLeftLegStance', 'StanceLeftImpactRight'}
        syms xL yL zL dxL dyL dzL
        q=[q; xL; yL; zL]; dq=[dq; dxL; dyL; dzL];
        pHL = p0 + R4*[-W; 0; 0];
        p1L = pHL + R5*[0; 0; L1];
        p2L = pHL + R6*[0; 0; L2];
        p3L = p1L + R6*[0; 0; L3];
        p4L = p2L + R5*[0; 0; L4];
        p0 = p0-p4L;                    p0 = simplify(p0);  p0 = p0 + [xL; yL; zL];
        disp('Building Model with Cartesian Frame [xL; yL; zL] Attached to the foot of the Left Leg')
        Model='StanceLeft'
    otherwise
        disp('Building a Single Support Model')
        Model='Hip';
end

% compute the biped center and torso com position
p0T = p0 + R0*[0; 0; LT];                 p0T = simplify(p0T);  %%
pcmT = p0 + R0*[0; -ellvcmT; ellhcmT];     pcmT = simplify(pcmT); %%
vcmT = jacobian(pcmT,q)*dq;               vcmT = simplify(vcmT);

% compute the right leg's joint & com positions

pHR = p0 + R3*[W; 0; 0];                  pHR = simplify(pHR);
pcmHR = p0 + R3*[ellhcmH;0; ellvcmH];     pcmHR = simplify(pcmHR);
vcmHR = jacobian(pcmHR,q)*dq;             vcmHR = simplify(vcmHR);

p1R = pHR + R1*[0; 0; L1];                p1R = simplify(p1R);  %%
pcm1R = pHR + R1*[0; -ellvcm1; ellhcm1];   pcm1R = simplify(pcm1R);
vcm1R = jacobian(pcm1R,q)*dq;             vcm1R = simplify(vcm1R);
 
p2R = pHR + R2*[0; 0; L2];                p2R = simplify(p2R);  %%
pcm2R = pHR + R2*[0; -ellvcm2; ellhcm2];   pcm2R = simplify(pcm2R); %%
vcm2R = jacobian(pcm2R,q)*dq;             vcm2R = simplify(vcm2R);

p3R = p1R + R2*[0; 0; L3];                p3R = simplify(p3R); %%
pcm3R = p1R + R2*[0; -ellvcm3; ellhcm3];   pcm3R = simplify(pcm3R); %%
vcm3R = jacobian(pcm3R,q)*dq;             vcm3R = simplify(vcm3R);

p4R = p2R + R1*[0; 0; L4];                p4R = simplify(p4R);  %%
pcm4R = p2R + R1*[0; -ellvcm4; ellhcm4];   pcm4R = simplify(pcm4R); %%
vcm4R = jacobian(pcm4R,q)*dq;             vcm4R = simplify(vcm4R);

% compute the left leg's joint & com positions

pHL = p0 + R4*[-W; 0; 0];                 pHL = simplify(pHL);
pcmHL = p0 + R4*[-ellhcmH;0; ellvcmH];    pcmHL = simplify(pcmHL);
vcmHL = jacobian(pcmHL,q)*dq;             vcmHL = simplify(vcmHL);

p1L = pHL + R5*[0; 0;L1];                p1L = simplify(p1L); %%
pcm1L = pHL + R5*[0; -ellvcm1; ellhcm1];   pcm1L = simplify(pcm1L); %%
vcm1L = jacobian(pcm1L,q)*dq;             vcm1L = simplify(vcm1L);

p2L = pHL + R6*[0; 0; L2];                p2L = simplify(p2L);
pcm2L = pHL + R6*[0; -ellvcm2; ellhcm2];   pcm2L = simplify(pcm2L);
vcm2L = jacobian(pcm2L,q)*dq;             vcm2L = simplify(vcm2L);

p3L = p1L + R6*[0; 0; L3];                p3L = simplify(p3L); %%
pcm3L = p1L + R6*[0; -ellvcm3; ellhcm3];   pcm3L = simplify(pcm3L); %%
vcm3L = jacobian(pcm3L,q)*dq;             vcm3L = simplify(vcm3L);

p4L = p2L + R5*[0; 0; L4];                p4L = simplify(p4L);  %%
pcm4L = p2L + R5*[0; -ellvcm4; ellhcm4];   pcm4L = simplify(pcm4L); %%
vcm4L = jacobian(pcm4L,q)*dq;             vcm4L = simplify(vcm4L);

pcm = (mT*pcmT + mH*(pcmHR+pcmHL) + m1*(pcm1R+pcm1L) + m2*(pcm2R+pcm2L) + m3*(pcm3R+pcm3L) + m4*(pcm4R+pcm4L))/Mtotal;
pcm = simple(pcm);


v0T=jacobian(p0T,q)*dq;
vHL=jacobian(pHL,q)*dq;
vHR=jacobian(pHR,q)*dq;
vcm=jacobian(pcm,q)*dq;
J_cm=jacobian(pcm,q);
dJ_cm=jacobian(J_cm*dq,q);

disp('Key positions and velocities computed')

%% Used in the impact model

switch which_model
    case {'StanceRightImpactLeft'}
        positionSwingFoot=p4L;
        w_zSwingFoot=w4L(3);
    case {'StanceLeftImpactRight'}
        positionSwingFoot=p4R;
        w_zSwingFoot=w4R(3);
    otherwise
        positionSwingFoot=0*p0;
        w_zSwingFoot=0;
end
JacobianSwingFoot=[jacobian(positionSwingFoot,q);jacobian(w_zSwingFoot,dq)];
E=JacobianSwingFoot;

save Mat\TempSymbolicData, eval(['save Mat\TempSymbolicData',Model])

switch which_model
    case {'StanceRightImpactLeft','StanceLeftImpactRight'}
        %Do not write a points file
        Jac_wStance=0*J_cm; Jac_wSwing=0*J_cm; dJac_wStance= 0*dJ_cm; dJac_wSwing=0*dJ_cm;
    case {'PointsOnly4AnimatorRightLegStance','PointsOnly4AnimatorLeftLegStance'}
        disp('Step 3B: Generate ATRIAS3D_points.m for joint positions');
        PointsVector=[pcm p0 p0T pHR p1R p2R p3R p4R pHL p1L p2L p3L p4L];
        StringPointsVector='pcm p0 p0T pHR p1R p2R p3R p4R pHL p1L p2L p3L p4L';
        fcn_name = ['ATRIAS3D_Primary_Points_Anim_',Model];
        generate_ATRIAS3D_points
        return  % Stop after writing the points file
    otherwise
        disp('Step 3B: Generate ATRIAS3D_points.m for joint positions');
        PointsVector=[pcm p0 p0T pHR p1R p2R p3R p4R pHL p1L p2L p3L p4L];
        StringPointsVector='pcm p0 p0T pHR p1R p2R p3R p4R pHL p1L p2L p3L p4L';
        fcn_name = ['ATRIAS3D_Primary_Points',Model];
        generate_ATRIAS3D_points
        PrimaryPointsVector=PointsVector;
        StringPrimaryPointsVector=StringPointsVector;

        disp('Step 3C: Generate ATRIAS3D_points.m for CoM positions');
        PointsVector=[pcm pcmT pcmHR pcm1R pcm2R pcm3R pcm4R pcmHL pcm1L pcm2L pcm3L pcm4L];
        StringPointsVector='pcm pcmT pcmHR pcm1R pcm2R pcm3R pcm4R pcmHL pcm1L pcm2L pcm3L pcm4L';
        fcn_name = ['ATRIAS3D_CoM_Positions',Model];
        generate_ATRIAS3D_points
        ComPointsVector=PointsVector;
        StringComPointsVector=StringPointsVector;

        disp('Step 3D: Generate Velocities and Jacobians for GRF');
        VelAccelVector=[vcm J_cm dJ_cm v0T vHL vHR];
        StringVelAccelVector='vcm J_cm dJ_cm v0T vHL vHR';
        fcn_name = ['VelAccelAtrias3D',Model];
        generate_velocties_accelerations

        %Continue after writing these files
end


toc, tic
save Mat\TempSymbolicData, eval(['save Mat\TempSymbolicData',Model])
disp('Step 4: Compute the translational kinetic energy');

TKET = (1/2)*mT*vcmT.'*vcmT;      TKET = simplify(TKET);

TKEHR = (1/2)*mH*vcmHR.'*vcmHR;   TKEHR = simplify(TKEHR);
TKE1R = (1/2)*m1*vcm1R.'*vcm1R;   TKE1R = simplify(TKE1R);
TKE2R = (1/2)*m2*vcm2R.'*vcm2R;   TKE2R = simplify(TKE2R);
TKE3R = (1/2)*m3*vcm3R.'*vcm3R;   TKE3R = simplify(TKE3R);
TKE4R = (1/2)*m4*vcm4R.'*vcm4R;   TKE4R = simplify(TKE4R);

TKEHL = (1/2)*mH*vcmHL.'*vcmHL;   TKEHL = simplify(TKEHL);
TKE1L = (1/2)*m1*vcm1L.'*vcm1L;   TKE1L = simplify(TKE1L);
TKE2L = (1/2)*m2*vcm2L.'*vcm2L;   TKE2L = simplify(TKE2L);
TKE3L = (1/2)*m3*vcm3L.'*vcm3L;   TKE3L = simplify(TKE3L);
TKE4L = (1/2)*m4*vcm4L.'*vcm4L;   TKE4L = simplify(TKE4L);

TKE = TKET + TKEHR + TKEHL;
TKE = TKE  + TKE1R + TKE2R + TKE3R + TKE4R;
TKE = TKE  + TKE1L + TKE2L + TKE3L + TKE4L;

TKE = simplify(TKE);

KE = RKE + TKE;

toc, tic
save Mat\TempSymbolicData, eval(['save Mat\TempSymbolicData',Model])
disp('Step 5: Compute the potential energy & gravity term vector G');
%
PE = Mtotal*g*pcm(3);
%
G = jacobian(PE,q).';

disp( 'G = ' );
for i=1:length(q)
    %G(i)=simple(G(i));
    G(i)=simplify(G(i));
    disp(['G(',num2str(i),')= ',char(G(i))])
end

toc, tic
save Mat\TempSymbolicData, eval(['save Mat\TempSymbolicData',Model])
disp('Step 6: Compute the D matrix');

Jac_KE_dq = jacobian(KE,dq);
D = jacobian(Jac_KE_dq,dq);

disp( 'D = ' );
for i=1:length(q)
    for j=i:length(q)
        %D(i,j)=simple(D(i,j));
        D(i,j)=simplify(D(i,j));
        D(j,i)=D(i,j);
        disp(['D(',num2str(i),',',num2str(j),')= ',char(D(i,j))])
    end
end
toc, tic
save Mat\TempSymbolicData, eval(['save Mat\TempSymbolicData',Model])

switch which_model
    case {'StanceRightImpactLeft','StanceLeftImpactRight'}
        disp('Step 7: Generate ATRIAS3D Impact Model for model matrices D,E');
        fcn_name = ['ATRIAS3D_ImpactModel_',Model,Params];
        generate_model_ATRIAS3D_Impact_v01
    otherwise
        if 0
            disp('Step 7: Compute the C matrix');
            for k=1:length(q)
                for j=1:length(q)
                    C(k,j)=0;
                    for i=1:length(q)
                        C(k,j)=C(k,j)+(1/2)*(diff(D(k,j),q(i))+diff(D(k,i),q(j))-diff(D(i,j),q(k)))*dq(i);
                    end
                end
            end
            % Simplify C and display it
            for i=1:length(q)
                for j=1:length(q)
                    C(i,j)=simplify(C(i,j));
                    disp(['C(',num2str(i),',',num2str(j),')= ',char(C(i,j))])
                end
            end
        else
            disp('Step 7: Compute the Cdq vector');
            CC=jacobian(KE,dq).';
            CC=jacobian(CC,q)-(1/2)*jacobian(D*dq,q).';
            CC=simplify(CC);
            Cdq=CC*dq;
            disp('Cdq computed; now simplify and display it.')
            toc, tic
            save Mat\TempSymbolicData, eval(['save Mat\TempSymbolicData',Model])
            for i=1:length(q)
                %Cdq(i)=simple(Cdq(i));
                Cdq(i)=simplify(Cdq(i));
                disp(['Cdq(',num2str(i),')= ',char(Cdq(i))])
            end

        end
        toc, tic
        save Mat\TempSymbolicData, eval(['save Mat\TempSymbolicData',Model])
        WhichFrame='inertial';
        switch which_model
            case {'Stance_RightLegZero'}
                switch WhichFrame
                    case {'body'}
                        w4RBody=transpose(R1)*w4R;
                        Jac_wStance=jacobian(w4RBody,dq);  %only need z-component
                        dJac_wStance=jacobian(Jac_wStance*dq,q); % but write all three for size
                        w4LBody=transpose(R5)*w4L;    %compatibility with Jcm, etc.
                        Jac_wSwing=jacobian(w4LBody,dq);
                        dJac_wSwing=jacobian(Jac_wSwing*dq,q);
                    case {'inertial'}
                        Jac_wStance=jacobian(w4R,dq);
                        dJac_wStance=jacobian(Jac_wStance*dq,q);
                        Jac_wSwing=jacobian(w4L,dq);
                        dJac_wSwing=jacobian(Jac_wSwing*dq,q);
                end
            case {'Stance_LeftLegZero'}
                switch WhichFrame
                    case {'body'}
                        w4LBody=transpose(R5)*w4L;
                        Jac_wStance=jacobian(w4LBody,dq);
                        dJac_wStance=jacobian(Jac_wStance*dq,q);
                        w4RBody=transpose(R1)*w4R;
                        Jac_wSwing=jacobian(w4RBody,dq);
                        dJac_wSwing=jacobian(Jac_wSwing*dq,q);
                    case {'inertial'}
                        Jac_wStance=jacobian(w4L,dq);
                        dJac_wStance=jacobian(Jac_wStance*dq,q);
                        Jac_wSwing=jacobian(w4R,dq);
                        dJac_wSwing=jacobian(Jac_wSwing*dq,q);
                end
            otherwise
                disp('Possible Error on Model Type?')
        end

        %disp('Step 8: Generate ATRIAS3D_Lagrange1_model.m for model matrices D,C,G,B');
        fcn_name = ['ATRIAS3D_Lagrange_DynamicModel_',Model,Params];
        %generate_model_ATRIAS3D_v02
end


Jacobians=[Jac_wStance dJac_wStance Jac_wSwing dJac_wSwing J_cm dJ_cm];
StringJacobians='Jac_wStance dJac_wStance Jac_wSwing dJac_wSwing J_cm dJ_cm';

Velocities=[vcm v0T vHL vHR];
StringVelocities='vcm v0T vHL vHR';

save Mat\TempSymbolicData, eval(['save Mat\TempSymbolicData',Model])
toc
disp('Done');





