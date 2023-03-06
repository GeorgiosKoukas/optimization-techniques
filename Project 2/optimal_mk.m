function [mk] = optimal_mk(f,x,y)
hssn = hessian(f);
temp_hssn = hssn(x,y);
product = abs([x y]*temp_hssn*transpose([x y]));

mk = 1.1*product;



