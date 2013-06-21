function value = polyp( poly_cor,s)
a0=poly_cor(:,1);
if s<=0.5
a1=poly_cor(:,2);
a2=poly_cor(:,3);
a3=poly_cor(:,4);
a4=poly_cor(:,5);
value=a0+s*(a1+s*(a2+s*(a3+s*a4)));
else
    value=0*a0;
end