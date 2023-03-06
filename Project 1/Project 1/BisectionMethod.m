function [k ,a ,b, f_values, f_calculations] = BisectionMethod(A,B,l,e,f)
a = A;
b = B;
x1 = (a + b)/2 - e;
x2 = (a + b)/2 + e;
k = 1;
f_values=[];
while(b-a)>l
    x1 = [x1, ((a(k) + b(k))/2 - e)];
    x2 = [x2, ((a(k) + b(k))/2 + e)];
    if f(x1(k))<f(x2(k))
        a = [a,a(k)];
        b = [b,x2(k)];
        k = k+1;
        f_values = [f_values,f(x2(k))];
    else
        b = [b,b(k)];
        a = [a,x1(k)];
        k = k+1;
        f_values = [f_values,f(x2(k))];
    end 
end 
f_calculations = size(f_values,2);
end

        

