clear; clc;

syms x y
%Function
f(x,y)= 1/3*x.^2 + 3*y.^2;

x_domain = -10:0.1:5;
y_domain = -8:0.1:12;
[X, Y] = meshgrid(x_domain, y_domain);

figure()
s = surf(X, Y, double(f(X,Y))),title("Function Graph");
filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 3\plots\', 'Function Graph.png')
saveas(s,filename);

x_domain_contour = -15:0.1:15;
y_domain_contour = -15:0.1:15;
[X_contour, Y_contour] = meshgrid(x_domain_contour, y_domain_contour);
figure()
c = contour(X_contour, Y_contour, double(f(X_contour,Y_contour))),title("Contour");
filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 3\plots\', 'Contour Graph.png')
saveas(c,filename);


Thema 1



% % i
[x_list,y_list,f_values,k] = steepest_descent(f, -5, 5, 0.1, 1000, 0, 0, 0, 0.01)

figure()
p1(1)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ k),xlabel('Iterations'),ylabel('Function Minimum');
filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 3\plots\', '1(i).f_values.png')
saveas(p1(1),filename);
figure()
p1(2) = plot(x_list,y_list,'-or')
hold on;
contour(X, Y, f(X,Y)),title("x_1, x_2, Movement")
filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 3\plots\', '1(i).x,y_movement.png')
saveas(p1(2),filename);
% ii
[x_list,y_list,f_values,iter] = steepest_descent(f, -1, 1, 0.3, 1000, 0, 0, 0, 0.01)


figure()
p1(3)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ k),xlabel('Iterations'),ylabel('Function Minimum');
filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 3\plots\', '1(ii).f_values.png')
saveas(p1(3),filename);
figure()
p1(4) = plot(x_list,y_list,'-or')
hold on;
contour(X, Y, f(X,Y)),title("x_1, x_2, Movement")
filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 3\plots\', '1(ii).x,y_movement.png')
saveas(p1(4),filename);
% iii
[x_list,y_list,f_values,iter] = steepest_descent(f, -1, 1, 3, 1000, 0, 0, 0, 0.01)

figure()
p1(5)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ k),xlabel('Iterations'),ylabel('Function Minimum');
filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 3\plots\', '1(iii).f_values.png')
saveas(p1(5),filename);
figure()
p1(6) = plot(x_list,y_list,'-or')
hold on;
contour(X, Y, f(X,Y)),title("x_1, x_2, Movement")
filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 3\plots\', '1(iii).x,y_movement.png')
saveas(p1(6),filename);
%iv
[x_list,y_list,f_values,iter] = steepest_descent(f, -1, 1, 5, 1000, 0, 0, 0, 0.01)

figure()
p1(7)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ k),xlabel('Iterations'),ylabel('Function Minimum');
filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 3\plots\', '1(iv).f_values.png')
saveas(p1(7),filename);
figure()
p1(8) = plot(x_list,y_list,'-or')
hold on;
contour(X, Y, f(X,Y)),title("x_1, x_2, Movement")
filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 3\plots\', '1(iv).x,y_movement.png')
saveas(p1(8),filename);

%Thema 2

[min,k,min_x1,min_x2,x1,x2,f_values] = steepest_descent_projection(f, 5, -5, 5, 0.5, 300 ,0.01);


figure()
p2(1)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ k),xlabel('Iterations'),ylabel('Function Minimum');
filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 3\plots\', '2.f_values.png')
saveas(p2(1),filename);
figure()
p2(2) = plot(x1,x2,'-or')
hold on;
contour(X, Y, f(X,Y)),title("x_1, x_2, Movement")
filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 3\plots\', '2.x,y_movement.png')
saveas(p2(2),filename);

%Thema 3

[min,k,min_x1,min_x2,x1,x2,f_values] = steepest_descent_projection(f, -5, 10, 15, 0.1, 300 ,0.01);


figure()
p3(1)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ k),xlabel('Iterations'),ylabel('Function Minimum');
filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 3\plots\', '3.f_values.png')
saveas(p3(1),filename);
figure()
p3(2) = plot(x1,x2,'-or')
hold on;
contour(X, Y, f(X,Y)),title("x_1, x_2, Movement")
filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 3\plots\', '3.x,y_movement.png')
saveas(p3(2),filename);

%Thema 4

[min,k,min_x1,min_x2,x1,x2,f_values] = steepest_descent_projection(f, 8, -10, 0.1, 0.2, 300 ,0.01);


figure()
p4(1)=plot(f_values),title("F Convergence"),subtitle("Iterations: "+ k),xlabel('Iterations'),ylabel('Function Minimum');
filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 3\plots\', '4.f_values.png')
saveas(p4(1),filename);
figure()
p4(2) = plot(x1,x2,'-or')
hold on;
contour(X, Y, f(X,Y)),title("x_1, x_2, Movement")
filename = fullfile('C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 3\plots\', '4.x,y_movement.png')
saveas(p4(2),filename);




