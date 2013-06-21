function value = polya( poly_cor, s )

a2=poly_cor(:,3);
if s<=0.5
a3=poly_cor(:,4);
a4=poly_cor(:,5);
value=2*a2+s*(6*a3+s*12*a4);
else
    value=0*a2;
end