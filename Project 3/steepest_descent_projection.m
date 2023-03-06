function [min,k,min_x1,min_x2,x1,x2,f_values] = steepest_descent_projection(f, x1_0, x2_0, s, gamma, max_iter ,e)
                                                                      
grad = gradient(f);
%variables
k = 1;
x1 = []; 
x2 = [];
f_values =[];

%initialization
[x1(k),x2(k)] = projection(x1_0,x2_0);
f_values(k) = f(x1(k),x2(k));

while (norm(grad(x1(k), x2(k))) >= e && k<max_iter)
    
    d = double(grad(x1(k), x2(k)));
    disp(d);
    [x1_bar,x2_bar] = projection ((x1(k) - (s*d(1))), (x2(k) - (s*d(2))));
    x1(k+1) = x1(k) + gamma * (x1_bar - x1(k));
    x2(k+1) = x2(k) + gamma * (x2_bar - x2(k));
    k = k + 1;
    f_values(k) = f(x1(k),x2(k));
     
end
min = double(f(x1(k),x2(k)));
min_x1 = double(x1(k));
min_x2 = double(x2(k));

end