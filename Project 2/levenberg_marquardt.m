function [x_list,y_list,f_value,iter] = levenberg_marquardt(f, x0, y0, gamma, max_iter, armijo, alpha, beta, e)
  % Set initial point
  x = x0;
  y = y0;
  
  
  
  % Set initial gradient
  grad = gradient(f);

  hssn = hessian(f);
  
  temp_grad = double(grad(x,y));
  temp_hessian = double(hssn(x,y));
  
  % Set initial value of the function
  f_value = double(f(x,y));

  % Initialize array to store the points visited by the algorithm
  x_list = x;
  y_list = y;
  % Set initial number of iterations
  iter = 0;
  mk = optimal_mk(f,x,y);
  I = diag(ones(2,1));
  % Perform steepest descent until the maximum number of iterations is reached
  while norm(temp_grad) > e && iter < max_iter
    % Compute the direction of steepest descent
    
    d = inv((temp_hessian+mk*I))*(-temp_grad);
    
    
    
    % Move in the direction of steepest descent
    x = x + gamma * double(d(1));
    y = y + gamma * double(d(2));
    
    
    % Store the new point
    x_list = [x_list, x];
    y_list = [y_list, y];
    % Compute the new gradient
    previous_grad = temp_grad;
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

