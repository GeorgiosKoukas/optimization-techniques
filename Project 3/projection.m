function [x1_projected,x2_projected] = projection(x1,x2)
   
    if  x1 <= -10  
        x1 = -10;
    elseif x1 >= 5 
        x1 = 5;
    end
    
    if  x2  <= -8  
        x2 = -8;
    elseif x2 >= 12      
        x2 = 12;
    end 

    x1_projected = x1;
    x2_projected = x2;
end

