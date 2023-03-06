function [x_list,y_list,f_value,iter] = newton(f, x0, y0, gamma, max_iter, armijo, alpha, beta, e)
  % Set initial point
  x = x0;
  y = y0;
  
  d = [0 0];
  % Set initial gradient
  grad = gradient(f);
  hess_f = hessian(f);
  lplc = laplacian(f);
  
  temp_grad = double(grad(x,y));
  temp_hess = double(hess_f(x,y));
  
  % Set initial step size
  step_size = gamma;

  % Set initial value of the function
  f_value = double(f(x,y));

  % Initialize array to store the points visited by the algorithm
  x_list = x;
  y_list = y;
  % Set initial number of iterations
  iter = 0;
  %Armijo mk
  mk = optimal_mk(f,x,y);
  
  % Perform steepest descent until the maximum number of iterations is reached
  while norm(temp_grad) > e && iter < max_iter %1e-6 
    % Compute the direction of steepest descent
    
    
    temp_lplc = lplc(x,y);
    
    d(1) = -1/double(temp_hess(1))*temp_grad(1);
    d(2) = -1/double(temp_hess(2))*temp_grad(2);
    
    % Move in the direction of steepest descent
    x = x + step_size * double(d(1));
    y = y + step_size * double(d(2));
    % Store the new point
    x_list = [x_list, x];
    y_list = [y_list, y];
    % Compute the new gradient
    temp_grad = grad(x,y);
    temp_lplc = lplc(x,y);
    temp_hess = hess_f(x,y);
    % Compute the new value of the function
    f_value = [f_value, double(f(x,y))];
    if armijo == 1
        s = gamma;
        disp(mk);
        if (f_value(end) - f_value(end-1)) <=double(-alpha*beta.^mk*s*d*temp_grad)
            gamma = s*beta.^mk;  
                 
        else
            break;
        end
    end
    % Update the number of iterations
    
    iter = iter + 1;
  end
end

