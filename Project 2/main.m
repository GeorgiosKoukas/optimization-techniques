clear ; clc;
syms x y
%Thema 1

f(x,y)= x^5 * exp(-(x^2)-(y^2));

%Thema 1

x_domain = -3:0.1:3;
y_domain = -3:0.1:3;
[X, Y] = meshgrid(x_domain, y_domain);

%global variables
global_gamma = 0.04;
global_alpha = 0.01;
global_beta = 0.7;
global_e = 0.01;
global_iters =100;

%Thema 1

% % figure()
% % p1(1)= surf(X, Y, double(f(X,Y))),title("Function Graph");
% % filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 2\plots\Thema 1', 'Graph.png');
% % saveas(p1(1),filename);
% % figure()
% % filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 2\plots\Thema 1', 'Contour.png');
% % %p1(2)= contourf(X, Y, f(X,Y)),title("Function Contour");
% % cntr_p =contourf(X, Y, f(X,Y)),title("Function Contour");
% % 
% % Thema 2 
% 
% [x_list,y_list,f_values,iter] = steepest_descent(f, 0, 0, global_gamma,global_iters, 0, global_alpha, global_beta, global_e);
% filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 2\plots\Thema 2\a', '0,0.jpg');
% figure()
% p2(1)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ iter),xlabel('Iterations'),ylabel('Function Minimum');
% saveas(p2(1),filename);
% 
% [x_list,y_list,f_values,iter] = steepest_descent(f, -1, 1, global_gamma,global_iters, 0, global_alpha, global_beta, global_e);
% figure()
% p2(2)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ iter),xlabel('Iterations'),ylabel('Function Minimum');
% filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 2\plots\Thema 2\a', '-1,1.jpg');
% saveas(p2(2),filename);
% 
% [x_list,y_list,f_values,iter] = steepest_descent(f, 1, -1,global_gamma,global_iters, 0, global_alpha, global_beta, global_e);
% figure()
% p2(3)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ iter),xlabel('Iterations'),ylabel('Function Minimum');
% filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 2\plots\Thema 2\a', '1,-1.jpg');
% saveas(p2(3),filename);
% 
% %b
% 
% iters = 20;
% loop_gamma = global_gamma/20;
% optimal_gamma = 0;
% [x_list,y_list,f_values,iter] = steepest_descent(f, 0, 0,loop_gamma,global_iters, 0, global_alpha, global_beta, global_e);
% lowest_f_value = f_values(end);
% for i=1:iters
%     [x_list,y_list,f_values,iter] = steepest_descent(f, 0, 0,loop_gamma*i,global_iters, 0, global_alpha, global_beta, global_e);
%     if f_values(end)< lowest_f_value
%         lowest_f_value = f_values(end);
%         optimal_gamma = loop_gamma*i;
%     end
% end
% [x_list,y_list,f_values,iter] = steepest_descent(f, 0, 0, optimal_gamma,global_iters, 0, global_alpha, global_beta, global_e);
% figure()
% p2(4)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ iter +", Optimal Gamma: " + optimal_gamma),xlabel('Iterations'),ylabel('Function Minimum');
% filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 2\plots\Thema 2\b', '0,0.jpg');
% saveas(p2(4),filename);
% 
% 
% [x_list,y_list,f_values,iter] = steepest_descent(f, -1, 1, loop_gamma,global_iters, 0, global_alpha, global_beta, global_e);
% lowest_f_value = f_values(end);
% for i=1:iters
%     [x_list,y_list,f_values,iter] = steepest_descent(f, -1, 1,loop_gamma*i,global_iters, 0, global_alpha, global_beta, global_e);
%     if f_values(end)< lowest_f_value
%         lowest_f_value = f_values(end);
%         optimal_gamma = loop_gamma*i;
%     end
% end
% [x_list,y_list,f_values,iter] = steepest_descent(f, -1, 1,optimal_gamma,global_iters, 0, global_alpha, global_beta, global_e);
% figure()
% p2(5)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ iter +", Optimal Gamma: " + optimal_gamma),xlabel('Iterations'),ylabel('Function Minimum');
% filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 2\plots\Thema 2\b', '1,-1.jpg');
% saveas(p2(5),filename);
% 
% 
% [x_list,y_list,f_values,iter] = steepest_descent(f, 1, -1,loop_gamma,global_iters, 0, global_alpha, global_beta, global_e);
% lowest_f_value = f_values(end);
% for i=1:iters
%     [x_list,y_list,f_values,iter] = steepest_descent(f, 1, -1, i*loop_gamma,global_iters, 0, global_alpha, global_beta, global_e);
%     if f_values(end)< lowest_f_value
%         lowest_f_value = f_values(end);
%         optimal_gamma = loop_gamma*i;
%     end
% end
% [x_list,y_list,f_values,iter] = steepest_descent(f, 1, -1,optimal_gamma,global_iters, 0, global_alpha, global_beta, global_e);
% figure()
% p2(6)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ iter +", Optimal Gamma: " + optimal_gamma),xlabel('Iterations'),ylabel('Function Minimum');
% filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 2\plots\Thema 2\b', '-1,1.jpg');
% saveas(p2(6),filename);
% 
% 
% %c armijo
% 
% [x_list,y_list,f_values,iter] = steepest_descent(f, 0, 0,global_gamma,global_iters, 1, global_alpha, global_beta, global_e);
% figure()
% p2(7)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ iter),xlabel('Iterations'),ylabel('Function Minimum');
% filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 2\plots\Thema 2\c', '0,0.jpg');
% saveas(p2(7),filename);
% [x_list,y_list,f_values,iter] = steepest_descent(f, -1, 1,global_gamma,global_iters, 1, global_alpha, global_beta, global_e);
% figure()
% p2(8)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ iter),xlabel('Iterations'),ylabel('Function Minimum');
% filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 2\plots\Thema 2\c', '1,-1.jpg');
% saveas(p2(8),filename);
% [x_list,y_list,f_values,iter] = steepest_descent(f, 1, -1,global_gamma,global_iters, 1, global_alpha, global_beta, global_e);
% figure()
% p2(9)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ iter),xlabel('Iterations'),ylabel('Function Minimum');
% filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 2\plots\Thema 2\c', '-1,1.jpg');
% saveas(p2(9),filename);

% % % pinakas = [x_list,y_list];
% % % 
% % % grid = meshgrid(100,100);
% % % [X, Y] = meshgrid(x_domain, y_domain);
% % % [X_COMPUTED,Y_COMPUTED] = meshgrid(x_list,y_list);
% % % surf(X, Y, double(f(X,Y)));
% % % hold on
% % % mesh(X_COMPUTED,Y_COMPUTED,double(f(X_COMPUTED,Y_COMPUTED)));
% % % hold off
% % 
% %Thema 3
% global_gamma=0.2;
% [x_list,y_list,f_values,iter] = newton(f, 0, 0,global_gamma,global_iters, 0, global_alpha, global_beta, global_e);
% filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 2\plots\Thema 3\a', '0,0.jpg');
% figure()
% p3(1)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ iter),xlabel('Iterations'),ylabel('Function Minimum');
% saveas(p3(1),filename);
% 
% [x_list,y_list,f_values,iter] = newton(f, -1, 1,global_gamma,global_iters, 0, global_alpha, global_beta, global_e);
% figure()
% p3(2)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ iter),xlabel('Iterations'),ylabel('Function Minimum');
% filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 2\plots\Thema 3\a', '-1,1.jpg');
% saveas(p3(2),filename);
% 
% [x_list,y_list,f_values,iter] = newton(f, 1, -1,global_gamma,global_iters, 0, global_alpha, global_beta, global_e);
% figure()
% p3(3)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ iter),xlabel('Iterations'),ylabel('Function Minimum');
% filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 2\plots\Thema 3\a', '1,-1.jpg');
% saveas(p3(3),filename);
% 
% %b
% 
% iters = 20;
% loop_gamma = global_gamma/20;
% optimal_gamma = 0;
% [x_list,y_list,f_values,iter] = newton(f, 0, 0,loop_gamma,global_iters, 0, global_alpha, global_beta, global_e);
% lowest_f_value = f_values(end);
% for i=1:iters
%     [x_list,y_list,f_values,iter] = newton(f, 0, 0, i*loop_gamma,global_iters, 0, global_alpha, global_beta, global_e);
%     if f_values(end)< lowest_f_value
%         lowest_f_value = f_values(end);
%         optimal_gamma = loop_gamma*i;
%     end
% end
% [x_list,y_list,f_values,iter] = newton(f, 0, 0, optimal_gamma,global_iters, 0, global_alpha, global_beta, global_e);
% figure()
% p3(4)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ iter +", Optimal Gamma: " + optimal_gamma),xlabel('Iterations'),ylabel('Function Minimum');
% filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 2\plots\Thema 3\b', '0,0.jpg');
% saveas(p3(4),filename);
% 
% 
% [x_list,y_list,f_values,iter] = newton(f, -1, 1,loop_gamma,global_iters, 0, global_alpha, global_beta, global_e);
% lowest_f_value = f_values(end);
% for i=1:iters
%     [x_list,y_list,f_values,iter] = newton(f, -1, 1, i*loop_gamma,global_iters, 0, global_alpha, global_beta, global_e);
%     if f_values(end)< lowest_f_value
%         lowest_f_value = f_values(end);
%         optimal_gamma = loop_gamma*i;
%     end
% end
% [x_list,y_list,f_values,iter] = newton(f, -1, 1, optimal_gamma,global_iters, 0, global_alpha, global_beta, global_e);
% figure()
% p3(5)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ iter +", Optimal Gamma: " + optimal_gamma),xlabel('Iterations'),ylabel('Function Minimum');
% filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 2\plots\Thema 3\b', '1,-1.jpg');
% saveas(p3(5),filename);
% 
% 
% [x_list,y_list,f_values,iter] = newton(f, 1, -1,loop_gamma,global_iters, 0, global_alpha, global_beta, global_e);
% lowest_f_value = f_values(end);
% for i=1:iters
%     [x_list,y_list,f_values,iter] = newton(f, 1, -1, i*loop_gamma,global_iters, 0, global_alpha, global_beta, global_e);
%     if f_values(end)< lowest_f_value
%         lowest_f_value = f_values(end);
%         optimal_gamma = loop_gamma*i;
%     end
% end
% [x_list,y_list,f_values,iter] = newton(f, 1, -1, optimal_gamma,global_iters, 0, global_alpha, global_beta, global_e);
% figure()
% p3(6)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ iter +", Optimal Gamma: " + optimal_gamma),xlabel('Iterations'),ylabel('Function Minimum');
% filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 2\plots\Thema 3\b', '-1,1.jpg');
% saveas(p3(6),filename);
% 
% 
% %c armijo
% 
% [x_list,y_list,f_values,iter] = newton(f, 0, 0,global_gamma,global_iters, 1, global_alpha, global_beta, global_e);
% figure()
% p3(7)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ iter),xlabel('Iterations'),ylabel('Function Minimum');
% filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 2\plots\Thema 3\c', '0,0.jpg');
% saveas(p3(7),filename);
% [x_list,y_list,f_values,iter] = newton(f, -1, 1,global_gamma,global_iters, 1, global_alpha, global_beta, global_e);
% figure()
% p3(8)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ iter),xlabel('Iterations'),ylabel('Function Minimum');
% filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 2\plots\Thema 3\c', '1,-1.jpg');
% saveas(p3(8),filename);
% [x_list,y_list,f_values,iter] = newton(f, 1, -1,global_gamma,global_iters, 1, global_alpha, global_beta, global_e);
% figure()
% p3(9)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ iter),xlabel('Iterations'),ylabel('Function Minimum');
% filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 2\plots\Thema 3\c', '-1,1.jpg');
% saveas(p3(9),filename);

% % %Thema 4

%a
global_gamma= 0.7;
[x_list,y_list,f_values,iter] = levenberg_marquardt(f, 0, 0,global_gamma,global_iters, 0, global_alpha, global_beta, global_e);
filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 2\plots\Thema 4\a', '0,0.jpg');
figure()
p4(1)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ iter),xlabel('Iterations'),ylabel('Function Minimum');
saveas(p4(1),filename);

[x_list,y_list,f_values,iter] = levenberg_marquardt(f, -1, 1,global_gamma,global_iters, 0, global_alpha, global_beta, global_e);
figure()
p4(2)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ iter),xlabel('Iterations'),ylabel('Function Minimum');
filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 2\plots\Thema 4\a', '-1,1.jpg');
saveas(p4(2),filename);


[x_list,y_list,f_values,iter] = levenberg_marquardt(f, 1, -1,global_gamma,global_iters, 0, global_alpha, global_beta, global_e);
figure()
p4(3)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ iter),xlabel('Iterations'),ylabel('Function Minimum');
filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 2\plots\Thema 4\a', '1,-1.jpg');
saveas(p4(3),filename);

%b

iters = 20;
loop_gamma = global_gamma/20;
optimal_gamma = 0;
[x_list,y_list,f_values,iter] = levenberg_marquardt(f, 0, 0,loop_gamma,global_iters, 0, global_alpha, global_beta, global_e);
lowest_f_value = f_values(end);
for i=1:iters
    [x_list,y_list,f_values,iter] = levenberg_marquardt(f, 0, 0, i*loop_gamma,global_iters, 0, global_alpha, global_beta, global_e);
    if f_values(end)< lowest_f_value
        lowest_f_value = f_values(end);
        optimal_gamma = loop_gamma*i;
    end
end
[x_list,y_list,f_values,iter] = levenberg_marquardt(f, 0, 0, optimal_gamma,global_iters, 0, global_alpha, global_beta, global_e);
figure()
p4(4)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ iter +", Optimal Gamma: " + optimal_gamma),xlabel('Iterations'),ylabel('Function Minimum');
filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 2\plots\Thema 4\b', '0,0.jpg');
saveas(p4(4),filename);


[x_list,y_list,f_values,iter] = levenberg_marquardt(f, -1, 1,loop_gamma,global_iters, 0, global_alpha, global_beta, global_e);
lowest_f_value = f_values(end);
for i=1:iters
    [x_list,y_list,f_values,iter] = levenberg_marquardt(f, -1, 1, i*loop_gamma,global_iters, 0, global_alpha, global_beta, global_e);
    if f_values(end)< lowest_f_value
        lowest_f_value = f_values(end);
        optimal_gamma = loop_gamma*i;
    end
end
[x_list,y_list,f_values,iter] = levenberg_marquardt(f, -1, 1, optimal_gamma,global_iters, 0, global_alpha, global_beta, global_e);
figure()
p4(5)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ iter +", Optimal Gamma: " + optimal_gamma),xlabel('Iterations'),ylabel('Function Minimum');
filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 2\plots\Thema 4\b', '1,-1.jpg');
saveas(p4(5),filename);


[x_list,y_list,f_values,iter] = levenberg_marquardt(f, 1, -1,loop_gamma,global_iters, 0, global_alpha, global_beta, global_e);
lowest_f_value = f_values(end);
for i=1:iters
    [x_list,y_list,f_values,iter] = levenberg_marquardt(f, 1, -1, i*loop_gamma,global_iters, 0, global_alpha, global_beta, global_e);
    if f_values(end)< lowest_f_value
        lowest_f_value = f_values(end);
        optimal_gamma = loop_gamma*i;
    end
end
[x_list,y_list,f_values,iter] = levenberg_marquardt(f, 1, -1, optimal_gamma,global_iters, 0, global_alpha, global_beta, global_e);
figure()
p4(6)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ iter +", Optimal Gamma: " + optimal_gamma),xlabel('Iterations'),ylabel('Function Minimum');
filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 2\plots\Thema 4\b', '-1,1.jpg');
saveas(p4(6),filename);


%c armijo

[x_list,y_list,f_values,iter] = levenberg_marquardt(f, 0, 0,global_gamma,global_iters, 1, global_alpha, global_beta, global_e);
figure()
p4(7)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ iter),xlabel('Iterations'),ylabel('Function Minimum');
filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 2\plots\Thema 4\c', '0,0.jpg');
saveas(p4(7),filename);
[x_list,y_list,f_values,iter] = levenberg_marquardt(f, -1, 1,global_gamma,global_iters, 1, global_alpha, global_beta, global_e);
figure()
p4(8)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ iter),xlabel('Iterations'),ylabel('Function Minimum');
filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 2\plots\Thema 4\c', '1,-1.jpg');
saveas(p4(8),filename);
[x_list,y_list,f_values,iter] = levenberg_marquardt(f, 1, -1,global_gamma,global_iters, 1, global_alpha, global_beta, global_e);
figure()
p4(9)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ iter),xlabel('Iterations'),ylabel('Function Minimum');
filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 2\plots\Thema 4\c', '-1,1.jpg');
saveas(p4(9),filename);




% % Define the function to be minimized
% fun = @(x) x(1)^5 * exp(-(x(1)^2)-(x(2)^2));
% % 
% % Define the starting point for the optimization
% x0 = [-1, 1];
% 
% % Set the optimization options
% options = optimset('Algorithm', 'interior-point', 'Display', 'iter');
% 
% % Find the minimum of the function using gradient descent
% [x_chat, fval_chat] = fminunc(fun, x0, options);



