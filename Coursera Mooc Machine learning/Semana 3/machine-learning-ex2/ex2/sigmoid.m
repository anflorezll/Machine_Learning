function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

g = 1./(1+ exp(-z)); % funcion sigmoid para los valores en z= theta'* X

end
