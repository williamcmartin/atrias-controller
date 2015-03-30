function [tauF,tauB, Jinv] =...
    distribute_hip_knee_torques(tau12,tau23,l_seg,l_v,v12,v23,phi12,phi23,lambda1,lambda2,s)

j11 = -l_seg*cos(v12/2-v23+phi23)/(l_v*cos(v12/2));
j12 = -l_seg*sin(v12-v23+phi23)/(l_v*sin(v12));
j21 = l_seg*cos(v12/2-v23-phi12+phi23)/(l_v*cos(v12/2));
j22 = l_seg*sin(v12-v23-phi12+phi23)/(l_v*sin(v12));
J = [j11, j12; j21, j22]; %[tauF; tauB] = J * [tauK, tauH]
Jinv = inv(J);

u1 = tau12;
u2 = tau23;
u3 = j11;
u4 = j12;
u5 = j21;
u6 = j22;
u7 = lambda1;
u8 = lambda2;
u9 = s;

tauKpossible = ...
[u1;
(u1*u6^2*u7+u5*u8*(-u2*u6+u9))/(u6^2*u7+u5^2*u8);
(u1*u4^2*u7+u3*u8*(-u2*u4+u9))/(u4^2*u7+u3^2*u8);
(u1*u6^2*u7-u5*u8*(u2*u6+u9))/(u6^2*u7+u5^2*u8);
(u1*u4^2*u7-u3*u8*(u2*u4+u9))/(u4^2*u7+u3^2*u8)
((u4 + u6)*u9)/(u4*u5-u3*u6);
((u4 - u6)*u9)/(-u4*u5+u3*u6);
((u4 - u6)*u9)/(u4*u5-u3*u6);
((u4 + u6)*u9)/(-u4*u5+u3*u6)];

tauHpossible = ...
[u2;
(u2*u5^2*u8+u6*u7*(-u1*u5+u9))/(u6^2*u7+u5^2*u8);
(u2*u3^2*u8+u4*u7*(-u1*u3+u9))/(u4^2*u7+u3^2*u8);
(u2*u5^2*u8-u6*u7*(u1*u5+u9))/(u6^2*u7+u5^2*u8);
(u2*u3^2*u8-u4*u7*(u1*u3+u9))/(u4^2*u7+u3^2*u8);
((u3+u5)*u9)/(-u4*u5+u3*u6);
((-u3+u5)*u9)/(-u4*u5+u3*u6);
((u3-u5)*u9)/(-u4*u5+u3*u6);
((u3+u5)*u9)/(-u4*u5+u3*u6)];

tauFpossible = j11*tauKpossible + j12*tauHpossible;
tauBpossible = j21*tauKpossible + j22*tauHpossible;

tol = 1.01;
c1 = tol*s + tauFpossible >= 0;
c2 = tol*s + tauBpossible >= 0;
c3 = tol*s - tauFpossible >= 0;
c4 = tol*s - tauBpossible >= 0;
constraints = c1 & c2 & c3 & c4;

f = -lambda1*(tauKpossible-tau12).^2-lambda2*(tauHpossible-tau23).^2;
satisfied = find(constraints);

if ~isempty(satisfied)
    [~,I] = max(f(satisfied));
    tauK = tauKpossible(satisfied(I));
    tauH = tauHpossible(satisfied(I));
    tauF = tauFpossible(satisfied(I));
    tauB = tauBpossible(satisfied(I));
else
    disp('No possible torques found, using u2 = J * u1');
    tauK = tauKpossible(1);
    tauH = tauHpossible(1);
    tauF = tauFpossible(1);
    tauB = tauBpossible(1);
end

end