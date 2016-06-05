function [X, theta1, theta2] = initialise(X)

    X = [ones(1,size(X,2)) ; X];
    
    theta1 = zeros(10,size(X,1));
    theta2 = zeros(10, 11);
    
    
     
end    