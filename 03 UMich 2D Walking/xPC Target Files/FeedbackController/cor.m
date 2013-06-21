function poly_cor=cor(ep,ev,si)

n=size(ep,1);
A=[1*eye(n) si*eye(n) si*si*eye(n) si^3*eye(n) si^4*eye(n)
   0*eye(n)  1*eye(n) 2*si*eye(n) 3*si*si*eye(n) 4*si^3*eye(n)
   16*eye(n) 8*eye(n) 4*eye(n) 2*eye(n) eye(n);
   0*eye(n)  4*eye(n) 4*eye(n) 3*eye(n) 2*eye(n);
   0*eye(n)  0*eye(n) 2*eye(n) 3*eye(n) 3*eye(n)];
B=[ep;
   ev;
   zeros(3*n,1)];
sol=A\B;
a0=sol(1:n);
a1=sol(n+1:2*n);
a2=sol(2*n+1:3*n);
a3=sol(3*n+1:4*n);
a4=sol(4*n+1:end);
poly_cor=[a0 a1 a2 a3 a4];
