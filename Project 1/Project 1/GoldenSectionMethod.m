function [k, a, b, function_values,f_calculations] = GoldenSectionMethod(A,B,l,f,gamma)

a = A;
b = B;

k = 1;
x1 = a(1) + (1-gamma)*(b(1)-a(1));
x2 = a(1) + gamma*(b(1)-a(1));
function_values= [];
while(b-a)>l 
    if f(x1(k))>f(x2(k))
        a =[a, x1(k)];
        b =[b, b(k)];
        x1= [x1,x2(k)];
        x2 = [x2,(a(k+1) + gamma*(b(k+1)-a(k+1)))];
        function_values = [function_values,double(f(x1(k+1)))];
        k = k+1;  
    else
        a =[a, a(k)];
        b = [b,x2(k)];   
        x2 = [x2,x1(k)];
        x1 = [x1,(a(k+1) + (1-gamma)*(b(k+1)-a(k+1)))];
        function_values = [function_values,double(f(x2(k+1)))];
        k = k+1;
    end 
end
f_calculations = 2*size(function_values,2);
end

