%% Avoid joint limits by ensuring we don't command positions/velocities/accelerations that would hit them.
function [back_cmd, front_cmd, dback_cmd, dfront_cmd, ddback_cmd, ddfront_cmd] ...
    = AvoidFourbarLimits(back_desired,dback_desired, ddback_desired, ...
          front_desired, dfront_desired, ddfront_desired, ...
          min_front_bar_angle, max_front_bar_angle, min_back_bar_angle, max_back_bar_angle)

    min_back_distance = back_desired - min_back_bar_angle;
    max_back_distance = max_back_bar_angle - back_desired;
    min_front_distance = front_desired - min_front_bar_angle;
    max_front_distance = max_front_bar_angle - front_desired;

    back_cmd = min(max(back_desired, min_back_bar_angle), max_back_bar_angle);
    front_cmd = min(max(front_desired, min_front_bar_angle), max_front_bar_angle);
    dback_cmd = dback_desired;
    dfront_cmd = dfront_desired;
    ddback_cmd = ddback_desired;
    ddfront_cmd = ddfront_desired;

    distance_threshold = 10*pi/180;

    if (min_back_distance < distance_threshold && sign(dback_desired) < 0) || ...
       (max_back_distance < distance_threshold && sign(dback_desired) > 0)
        dback_cmd = 0;
    end
    
    if (min_back_distance < distance_threshold && sign(ddback_desired) < 0) || ...
       (max_back_distance < distance_threshold && sign(ddback_desired) > 0)
        ddback_cmd = 0;
    end

    if (min_front_distance < distance_threshold && sign(dfront_desired) < 0) || ...
       (max_front_distance < distance_threshold && sign(dfront_desired) > 0)
        dfront_cmd = 0;
    end
    
    if (min_front_distance < distance_threshold && sign(ddfront_desired) < 0) || ...
       (max_front_distance < distance_threshold && sign(ddfront_desired) > 0)
        ddfront_cmd = 0;
    end

end