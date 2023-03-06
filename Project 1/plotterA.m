function [] = plotterA(loops, f, f_name)
l = 0.01;
a_values = zeros(1,loops);
b_values = zeros(1,loops);
f_values = zeros(1,loops);
f_calculations = zeros(1,loops);
for i=1:loops
    [k, a, b,tempf_values,tempf_calculations] = BisectionMethod(-1,3,0.01,0.1.^(i+2),f);
    a_values(i) = a(end);
    b_values(i) = b(end);
    f_values(i) = tempf_values(end);
    f_calculations(i) = tempf_calculations;
    disp ( i);
end
figure(),subplot(4,1,1),plot(a_values),title(f_name),legend("α");
subplot(4,1,2),plot(b_values),legend("β");
subplot(4,1,3),plot(f_values),title("Function values"),legend("l = 0.01, e =0.1^{(k+2)}");
subplot(4,1,4),plot(f_calculations),title("Times Function was calculated");
sgtitle('Bisection Method - '+f_name) 
    %e constant
e = 0.001;
a_values = zeros(1,loops);
b_values = zeros(1,loops);
f_values = zeros(1,loops);
for i=1:loops
    [k, a, b, tempf_values] = BisectionMethod(-1,3,0.1.^(i/4),e,f);
    a_values(i) = a(end);
    b_values(i) = b(end);
    f_values(i) = tempf_values(end);
    
    disp ( i);
end

figure(),subplot(4,1,1),plot(a_values),title(f_name),legend("α");
subplot(4,1,2),plot(b_values),legend("β");
subplot(4,1,3),plot(f_values),legend("Function values"),legend("l = 0.1^{(k/4)}, e =0.001");
subplot(4,1,4),plot(f_calculations),title("Times Function was calculated");
sgtitle('Bisection Method - '+f_name) 

end

