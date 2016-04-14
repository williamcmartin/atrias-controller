% Solve systems of equations for Kuhn-Tucker optimization
syms Fz Fz_s Fy Fy_s mu1 mu2 mu3 mu4 yf yb zf zb 
syms lambda1 lambda2 tau_max  positive
f1 = 2*lambda1*(Fz_s - Fz) - mu1*yf + mu2*yf;% - mu3*yb + mu4*yf;
f2 = 2*lambda2*(Fy_s - Fy) + mu1*zf - mu2*zf;% + mu3*zb - mu4*zb;
f3 = mu1*(tau_max - yf*Fz + zf*Fy);
f4 = mu2*(tau_max + yf*Fz - zf*Fy);
%f5 = mu3*(tau_max - yb*Fz + zb*Fy);
%f6 = mu4*(tau_max + yb*Fz - zb*Fy);

% Nine solutions
[Fz,Fy,mu1,mu2] = solve(f1==0,f2==0,f3==0,f4==0,Fz,Fy,mu1,mu2);

N = length(Fz);
% print out all solutions
for i=1:N
    fprintf('Solution %d\n', i);
    fprintf(' Fz:  %s\n Fy:  %s\n mu1: %s\n mu2: %s\n\n',char(Fz(i)),char(Fy(i)),char(mu1(i)),char(mu2(i)));
end

for i=1:N
    fprintf('%s\n',char(simplify(Fy(i))));
end

%     Fz = [  (s*(zb - zf))/(yb*zf - yf*zb);
%             (Fz_s*lambda1*zb^2 - lambda2*s*yf + Fy_s*lambda2*yf*zb)/(lambda1*zb^2 + lambda2*yb*yf);
%             -(s*(zb + zf))/(yb*zf - yf*zb);
%             (s*(zb + zf))/(yb*zf - yf*zb);
%             (lambda2*s*yb + Fz_s*lambda1*zb^2 + Fy_s*lambda2*yb*zb)/(lambda2*yb^2 + lambda1*zb^2);
%             (lambda2*s*yf + Fz_s*lambda1*zf^2 + Fy_s*lambda2*yf*zf)/(lambda2*yf^2 + lambda1*zf^2);
%             (Fz_s*lambda1*zf^2 - lambda2*s*yf + Fy_s*lambda2*yf*zf)/(lambda2*yf^2 + lambda1*zf^2);
%             Fz_s;
%             -(s*(zb - zf))/(yb*zf - yf*zb)];
% 
%     Fy = [  (s*(yb - yf))/(yb*zf - yf*zb);
%             (lambda1*s*zb + Fy_s*lambda2*yb*yf + Fz_s*lambda1*yb*zb)/(lambda1*zb^2 + lambda2*yb*yf);
%             -(s*(yb + yf))/(yb*zf - yf*zb);
%             (s*(yb + yf))/(yb*zf - yf*zb);
%             (Fy_s*lambda2*yb^2 - lambda1*s*zb + Fz_s*lambda1*yb*zb)/(lambda2*yb^2 + lambda1*zb^2);
%             (Fy_s*lambda2*yf^2 - lambda1*s*zf + Fz_s*lambda1*yf*zf)/(lambda2*yf^2 + lambda1*zf^2);
%             (lambda1*s*zf + Fy_s*lambda2*yf^2 + Fz_s*lambda1*yf*zf)/(lambda2*yf^2 + lambda1*zf^2);
%             Fy_s;
%             -(s*(yb - yf))/(yb*zf - yf*zb)];