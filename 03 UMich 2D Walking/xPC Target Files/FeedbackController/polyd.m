function value = polyd( poly_cor, s )

a1=poly_cor(:,2);
if s<=0.5
a2=poly_cor(:,3);
a3=poly_cor(:,4);
a4=poly_cor(:,5);
value=a1+s*(2*a2+s*(3*a3+s*4*a4));
else
    value=0*a1;
end