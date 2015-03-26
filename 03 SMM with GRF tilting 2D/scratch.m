syms qRoll(t) l_boom_projected qYaw(t) d_y_boom_com_offset qPitch(t) boom_mount_angle

x_com =  l_boom_projected * cos(qRoll) * qYaw - d_y_boom_com_offset * sin(qPitch) * cos(qRoll-boom_mount_angle);
dx_com = diff(x_com,t)

y_com = h_boom + l_boom_projected * sin(qRoll)  -  d_y_boom_com_offset * cos(qRoll-boom_mount_angle) * cos(qPitch);
dy_com = simplify(diff(y_com,t))