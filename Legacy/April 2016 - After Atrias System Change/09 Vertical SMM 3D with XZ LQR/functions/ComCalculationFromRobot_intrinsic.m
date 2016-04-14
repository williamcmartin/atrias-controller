%% Computes 3D COM location of robot using robot geometry
% Coordinates:
%       x = forward
%       y = left
%       z = up
%
% Body frame:   Frame aligned with torso
% Yawed frame:  Frame aligned with torso yaw but not roll or pitch
% Global frame: Stationary global frame
%
% Outputs:
%     All outputs are 9x1 vectors containing three (x,y,z) values
%     [body_x; body_y; body_z; yawed_x; yawed_y; yawed_z; global_x; global_y; global_z]
%
%     Com_pelvis_byg = Center of mass from Pelvis - body/yawed/global
%     Com_fL_byg = Center of mass from Left Foot - body/yawed/global
%     Com_fR_byg = Center of mass from Right Foot - body/yawed/global
%
% Inputs:
%     m_torso:        mass of torso
%     m_leg_motor:    mass of sagittal motor assembly
%     m_leg:          mass of fourbar leg
%     com_torso:      com of torso from pelvis
%     com_leg_motor:  com of left sagittal motor assembly from pelvis
%     lateral_offset: horizontal distance from pelvis to leg plane
%     q:              position vector with the following order
%                         roll
%                         pitch
%                         yaw
%                         relative left leg sagittal angle 
%                         relative left leg lateral angle 
%                         left leg length
%                         relative right leg sagittal angle 
%                         relative right leg lateral angle 
%                         right leg length
%
% Note: roll, pitch, & yaw are aligned with the chassis (intrinsic rotations)

function [ com_pelvis, dcom_pelvis, ...
           com_left_foot, dcom_left_foot, ...
           com_right_foot, dcom_right_foot ] ...
         = ComCalculationFromRobot( q, dq, m_torso, m_leg_motor, m_leg, com_torso, com_leg_motor, lateral_offset )

    mt = m_torso;
    mm = m_leg_motor;
    r = lateral_offset;

    phi =       q(1);   % roll
    theta =     q(2);   % pitch
    psi =       q(3);   % yaw
    alpha_L =   q(4);   % relative left leg sagittal angle 
    beta_L =    q(5);   % relative left leg lateral angle 
    l_L =       q(6);   % left leg length
    alpha_R =   q(7);  % relative right leg sagittal angle 
    beta_R =    q(8);  % relative right leg lateral angle 
    l_R =       q(9);  % right leg length
    dphi =      dq(1);  
    dtheta =    dq(2); 
    dpsi =      dq(3);
    dalpha_L =  dq(4); 
    dbeta_L =   dq(5); 
    dl_L =      dq(6); 
    dalpha_R =  dq(7); 
    dbeta_R =   dq(8); 
    dl_R =      dq(9);

    % find relative coordinates of hips, pelvis, trunk relative to foot
    % copy paste from simplified results symbolic_dynamics.m, valid for left foot
    hipL_fL_b = [-l_L*sin(alpha_L);
                  l_L*cos(alpha_L)*cos(beta_L);
                 -l_L*cos(alpha_L)*sin(beta_L)];
             
    % for right foot, flip all the body-frame y coordinates
    hipR_fR_b = [-l_R*sin(alpha_R);
                 -l_R*cos(alpha_R)*cos(beta_R);
                 -l_R*cos(alpha_R)*sin(beta_R)];     
    pelvis_hipL_b = [0; -r*sin(beta_L); -r*cos(beta_L)];
    pelvis_hipR_b = [0;  r*sin(beta_R); -r*cos(beta_R)];

    hLmass_pelvis_b = R_roll(-beta_L+pi/2)*com_leg_motor';
    hRmass_pelvis_b = diag([1 -1 1])*R_roll(-beta_R+pi/2)*com_leg_motor';
    
    % rotation applying the opposite rotation, vector needs to be negated in z for
    % mirrored geometry. (draw it).
    trunk_pelvis_b = com_torso';
    com_pelvis_b = (mt*trunk_pelvis_b + (mm+m_leg)*hLmass_pelvis_b + (mm+m_leg)*hRmass_pelvis_b)/(mt+2*(mm+m_leg));
    
    % rotate results to yawed frame and global frame
    com_pelvis_y = R_pitch(theta)*R_roll(phi)*com_pelvis_b;
    com_pelvis_g = R_yaw(psi)*com_pelvis_y;
    com_pelvis = [com_pelvis_b; com_pelvis_y; com_pelvis_g];

    com_fL_b = com_pelvis_b + pelvis_hipL_b + hipL_fL_b;
    com_fL_y = R_pitch(theta)*R_roll(phi)*com_fL_b;
    com_fL_g = R_yaw(psi)*com_fL_y;
    com_left_foot = [com_fL_b; com_fL_y; com_fL_g];

    com_fR_b = com_pelvis_b + pelvis_hipR_b + hipR_fR_b;
    com_fR_y = R_pitch(theta)*R_roll(phi)*com_fR_b;
    com_fR_g = R_yaw(psi)*com_fR_y;
    com_right_foot = [com_fR_b; com_fR_y; com_fR_g];

    % repeat for velocities
    dhipL_fL_b = [-dl_L*sin(alpha_L) - dalpha_L*l_L*cos(alpha_L);
                   dl_L*cos(alpha_L)*cos(beta_L) - dalpha_L*l_L*sin(alpha_L)*cos(beta_L) - dbeta_L*l_L*cos(alpha_L)*sin(beta_L);
                  -dl_L*cos(alpha_L)*sin(beta_L) + dalpha_L*l_L*sin(alpha_L)*sin(beta_L) - dbeta_L*l_L*cos(alpha_L)*cos(beta_L)];
    dhipR_fR_b = [-dl_R*sin(alpha_R) - dalpha_R*l_R*cos(alpha_R);
                  -dl_R*cos(alpha_R)*cos(beta_R) + dalpha_R*l_R*sin(alpha_R)*cos(beta_R) + dbeta_R*l_R*cos(alpha_R)*sin(beta_R);
                  -dl_R*cos(alpha_R)*sin(beta_R) + dalpha_R*l_R*sin(alpha_R)*sin(beta_R) - dbeta_R*l_R*cos(alpha_R)*cos(beta_R)];

    dpelvis_hipL_b = [0; -dbeta_L*r*cos(beta_L); dbeta_L*r*sin(beta_L)];
    dpelvis_hipR_b = [0;  dbeta_R*r*cos(beta_R); dbeta_R*r*sin(beta_R)];
    dhLmass_pelvis_b = dR_roll(-beta_L+pi/2, -dbeta_L)*com_leg_motor';
    dhRmass_pelvis_b = diag([1 -1 1])*dR_roll(-beta_R+pi/2, -dbeta_R)*com_leg_motor';
    
    dtrunk_pelvis_b = 0;

    dcom_pelvis_b = (mt*dtrunk_pelvis_b + (mm+m_leg)*dhLmass_pelvis_b + (mm+m_leg)*dhRmass_pelvis_b)/(mt+2*(mm+m_leg));
    dcom_pelvis_y = R_pitch(theta)*R_roll(phi)*dcom_pelvis_b ...
             + R_pitch(theta)*dR_roll(phi, dphi)*com_pelvis_b ...
             + dR_pitch(theta,dtheta)*R_roll(phi)*com_pelvis_b;
    dcom_pelvis_g = R_yaw(psi)*dcom_pelvis_y + dR_yaw(psi,dpsi)*com_pelvis_y;
    dcom_pelvis = [dcom_pelvis_b; dcom_pelvis_y; dcom_pelvis_g];

    dcom_fL_b = dcom_pelvis_b + dpelvis_hipL_b + dhipL_fL_b;
    dcom_fL_y = R_pitch(theta)*R_roll(phi)*dcom_fL_b...
              + R_pitch(theta)*dR_roll(phi,dphi)*com_fL_b...
              + dR_pitch(theta,dtheta)*R_roll(phi)*com_fL_b;
    dcom_fL_g = R_yaw(psi)*dcom_fL_y + dR_yaw(psi,dpsi)*com_fL_y;
    dcom_left_foot = [dcom_fL_b; dcom_fL_y; dcom_fL_g];

    dcom_fR_b = dcom_pelvis_b + dpelvis_hipR_b + dhipR_fR_b;
    dcom_fR_y = R_pitch(theta)*R_roll(phi)*dcom_fR_b ...
              + R_pitch(theta)*dR_roll(phi,dphi)*com_fR_b...
              + dR_pitch(theta,dtheta)*R_roll(phi)*com_fR_b;
    dcom_fR_g = R_yaw(psi)*dcom_fR_y + dR_yaw(psi,dpsi)*com_fR_y;
    dcom_right_foot = [dcom_fR_b; dcom_fR_y; dcom_fR_g];

end


function R_gy = R_yaw(psi) % map yawed frame to global
  R_gy = [cos(psi), -sin(psi), 0; sin(psi), cos(psi), 0; 0 0 1]; 
end
function dR_gy = dR_yaw(psi,dpsi)
  dR_gy = dpsi*[-sin(psi), -cos(psi), 0; cos(psi), -sin(psi), 0; 0 0 0];
end
function R_yp = R_pitch(theta) % map from pitched to yawed
  R_yp = [cos(theta), 0, sin(theta); 0 1 0; -sin(theta), 0, cos(theta)];
end
function dR_yp = dR_pitch(theta,dtheta)
  dR_yp = dtheta*[-sin(theta), 0, cos(theta); 0 0 0; -cos(theta),0,-sin(theta)];
end
function R_pr = R_roll(phi) % map from rolled to pitched
  R_pr = [1 0 0; 0 cos(phi) -sin(phi); 0 sin(phi) cos(phi)]; 
end
function dR_pr = dR_roll(phi,dphi)
  dR_pr = dphi*[0 0 0; 0 -sin(phi) -cos(phi); 0 cos(phi) -sin(phi)];
end
