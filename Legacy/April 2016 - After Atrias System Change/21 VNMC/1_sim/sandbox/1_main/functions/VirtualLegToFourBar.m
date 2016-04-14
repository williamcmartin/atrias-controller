%% VirtualLegToFourBar    Converts a virtual leg angle/length into four-bar linkage angles.
%
%    Lengths: meters
%    Angles:  radians
%    Time:    seconds
%
%    [back, dback, ddback, front, dfront, ddfront] = VirtualLegToFourBar(l_leg, dl_leg, ddl_leg, phi, dphi, ddphi)
%    converts virtual leg angle (phi) and virtual leg length(l_leg) into a back bar angle (back) and front bar angle
%    (front). Velocities (d-prefix) and accelerations (dd-prefix) are similarly transformed.
function [back, dback, ddback, front, dfront, ddfront] = VirtualLegToFourBar(l_leg, dl_leg, ddl_leg, phi, dphi, ddphi)

    back  = phi + acos(l_leg);
    front = phi - acos(l_leg);
    
    dback  = dphi - dl_leg/sin((back-front)/2);
    dfront = dphi + dl_leg/sin((back-front)/2);
    
    ddback = ddphi - ddl_leg/(1 - l_leg^2)^(1/2) - (l_leg*dl_leg^2)/(1 - l_leg^2)^(3/2);
    ddfront = ddl_leg/(1 - l_leg^2)^(1/2) + ddphi + (l_leg*dl_leg^2)/(1 - l_leg^2)^(3/2);
    
end