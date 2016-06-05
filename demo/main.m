function [theta1, theta2] = main()
    
    X = loadMNISTImages('train-images.idx3-ubyte');
    y = loadMNISTLabels('train-labels.idx1-ubyte');
    
    y1 = zeros(length(y), 10);
    
    for i = 1:length(y)
       if(y(i) == 0)
           y1(i,10) = 1;
       else
           y1(i,y(i)) = 1;
       end
    end    
    
    y = y1';
    
    [X, theta1, theta2] = initialise(X);
    
    
    
    %J = cost(X, y, h);
    
    % delta computation
    
    %delta3 = h - y;
    %delta2 = (theta2' * delta3) .* (a2 .* (1-a2));
    
    
    for iter = 1:50
        iter;
        grad1 = computeNumericalGradient(X, y, theta1, theta2);
        grad2 = computeNumericalGradient(X, y, theta2, theta1);
        
        theta1 = theta1 - (0.01/size(X,2)) * grad1;
        theta2 = theta1 - (0.01/size(X,2)) * grad2;
    end
    
    
end