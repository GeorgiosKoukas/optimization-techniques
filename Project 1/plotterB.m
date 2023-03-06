function [] = plotterB(loops, f, f_name)
l = 0.01;
a_values = zeros(1,loops);
b_values = zeros(1,loops);
f_values = zeros(1,loops);
f_calculations = zeros(1,loops);
for i=1:loops
    [k, a, b,tempf_values,tempf_calculations] = GoldenSectionMethod(-1,3,1/i,f, 0.617);%0.1.^(i+2)
    a_values(i) = a(end);
    b_values(i) = b(end);
    f_values(i) = tempf_values(end);
    f_calculations(i) = tempf_calculations;
    disp ( i);
end
figure(),subplot(4,1,1),plot(a_values),title(f_name),legend("α");
subplot(4,1,2),plot(b_values),legend("β");
subplot(4,1,3),plot(f_values),title("Function values"),legend("l = 1/i");
subplot(4,1,4),plot(f_calculations),title("Times Function was calculated");
sgtitle('GoldenSectionMethod - '+f_name) 
end