function [x_list,y_list,f_value,iter] = steepest_descent(f, x0, y0, gamma, max_iter, armijo, alpha, beta, e)
  % Set initial point
  x = x0;
  y = y0;
  % Set initial gradient
  grad = gradient(f);
  temp_grad = grad(x,y);
  
  temp_grad = double(grad(x,y));
 

  % Set initial step size
  step_size = gamma;

  % Set initial value of the function
  f_value = double(f(x,y));

  % Initialize array to store the points visited by the algorithm
  x_list = x;
  y_list = y;
  % Set initial number of iterations
  iter = 0;
  
  % Perform steepest descent until the maximum number of iterations is reached
  while norm(temp_grad) > e && iter < max_iter
    % Compute the direction of steepest descent
    
    d = -temp_grad;
    
    % Move in the direction of steepest descent
    x = x + step_size * double(d(1));
    y = y + step_size * double(d(2));
    % Store the new point
    x_list = [x_list, x];
    y_list = [y_list, y];
    % Compute the new gradient
    temp_grad = grad(x,y);

    % Compute the new value of the function
    f_value = [f_value, double(f(x,y))];
    if armijo == 1
        s = gamma;
        disp(mk);
        if (f_value(end) - f_value(end-1)) <=double(-alpha*beta.^mk*s*transpose(d)*temp_grad)
            gamma = s*beta.^mk;  
                 
        else
            break;
        end
    end
        
    % Update the number of iterations
    iter = iter + 1;
  end
end

