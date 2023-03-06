function [] = plotterC(loops, f, f_name)
l = 0.01;
a_values = zeros(1,loops);
b_values = zeros(1,loops);
f_values = zeros(1,loops);
f_calculations = zeros(1,loops);
for i=1:loops
    [k, a, b,n,tempf1_values,tempf2_values,tempf_calculations] = FibonacciMethod(-1,3,1/i,0.001,f);
    a_values(i) = a(end);
    b_values(i) = b(end);
    fx1_values(i) = tempf1_values(end);
    fx2_values(i) = tempf2_values(end);
    f_calculations(i) = tempf_calculations;
    disp ( i);
end
figure(),subplot(4,1,1),plot(a_values),title(f_name),legend("α");
subplot(4,1,2),plot(b_values),legend("β");
subplot(4,1,3),plot(fx1_values,'b'),title("Function values (x_1)"),legend("l = 1/i")
hold on
plot(fx2_values,'r')
hold off
subplot(4,1,4),plot(f_calculations),title("Times Function was calculated");
sgtitle('Fibonacci Method - '+f_name) 
end