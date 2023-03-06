function [k ,a ,b, n, fx1_values, fx2_values, f_calculations] = FibonacciMethod(A,B,l,e,f)


i=1;
while fibonacci(i)<((B-A)/l)
    n = i;    
    i = i+1;
end



a = zeros(1,n);
b = zeros(1,n);
x1 = zeros(1,n);
x2 = zeros(1,n);
fibonacci_table = fibonacci(1:n);
fx1_values = zeros(1,n);
fx2_values = zeros(1,n);

a(1)= A;
b(1)= B;

x1(1) = a(1) + (fibonacci_table(n-2)/fibonacci_table(n))*(b(1)-a(1));
x2(1) = a(1) + (fibonacci_table(n-1)/fibonacci_table(n))*(b(1)-a(1));

fx1_values(1) = f(x1(1));

fx2_values(1) = f(x2(1));


k=1;

for i=k:n
    if f(x1(k))>f(x2(k)) %Step 2
      %  disp("Step2")
        a(k+1) = x1(k);
        b(k+1) = b(k);
        x1(k+1) = x2(k);
        x2(k+1) = a(k+1) + (fibonacci_table(n-k-1+1)/fibonacci_table(n-k+1))*(b(k+1)-a(k+1));
        if k == (n-2) %Step 5
          %  disp("Step5")
            x1(n) = x1(n-1);
            x2(n) = x1(n-1) + e;
            fx1_values(n) = f(x1(n));
            fx2_values(n) = f(x2(n));
            if f(x1(n))>f(x2(n))
                a(n) = x1(n);
                b(n) = b(n-1);
               % disp("break")
                break;
            else
                a(n) = a(n-1);
                b(n) = x1(n);
              %  disp("break")
                break;
            end
        else %Step 4
         %  disp("Step4")
           fx2_values(k+1) = f(x2(k+1));
           k = k+1; 
        end
    else %step 3
      %  disp("Step3")
        a(k+1) = a(k);
        b(k+1) = x2(k);
        x2(k+1) = x1(k);
       % disp(n-k);
        x1(k+1) = a(k+1) + (fibonacci_table(n-k-2+1)/fibonacci_table(n-k+1))*(b(k+1)-a(k+1));
        if k == (n-2) %Step 5
         %   disp("Step5")
            x1(n) = x1(n-1);
            x2(n) = x1(n-1) + e;
            fx1_values(n) = f(x1(n));
            fx2_values(n) = f(x2(n));
            if f(x1(n))>f(x2(n))
                a(n) = x1(n);
                b(n) = b(n-1);
             %   disp("break")
                break;
            else
                a(n) = a(n-1);
                b(n) = x1(n);
             %   disp("break")
                break
            end
        else %Step 4
          % disp("Step4")
           fx1_values(k+1) = f(x1(k+1));
           k = k+1;
        end
    end
end
fx1_values = nonzeros(fx1_values);
fx2_values = nonzeros(fx2_values);
size1 = size(fx1_values,1);
size2 = size(fx2_values,1);
f_calculations = size1+size2;

            
            
                
            
            

