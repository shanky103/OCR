function [J] = cost(X, y, theta1, theta2)
    

    z2 = theta1 * X;
    
    a2 = [ones(1,size(logisticSigmoid(z2),2)); logisticSigmoid(z2)];
    z3 = theta2 * a2;
    
    h = logisticSigmoid(z3);
    
    f = zeros(10, size(X,2));
    %for i = 1 : size(h,2)
        f = y .* log(h) + (1-y) .* log(1-h);
   
    
    J1 = sum(f);
    
    J = (-1/(size(X,2))) * sum(J1');
    
end