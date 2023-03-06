function [k, a, b, f_values, f_calculations] = BisectionMethod_Derivative(A,B,l,f)
n=1;
while ((1/2)^n) > (l/(B-A))
     n= n+1;
end
a=A;
b=B;
Df = diff(f);
x = (a(1)+b(1))/2;
Df_values = double(Df(x(1)));
f_values = double(f(x(1)));
k = 1;
while 1
    if k==1
        
        x = (a(1)+b(1))/2;
        Df_values = double(Df(x(1)));
    else
        
        x = [x, ((a(k)+b(k))/2)];
        Df_values = [Df_values, double(Df(x(k)))];
        f_values = [f_values, double(f(x(k)))];
        
    end
    if double(Df(x(k))) == 0
        
        break;
    elseif double(Df(x(k)))>0
        
        a = [a, a(k)];
        
        b = [b, x(k)];
        
        k = k+1;
        
        if k == n
            break;
        end 
    elseif double(Df(x(k)))<0
        
        a = [a, x(k)];
        
        b = [b, b(k)];
        
        k = k+1;
        
        if k == n
            break;
        end
    end
end
f_calculations = size(f_values,2);
end

