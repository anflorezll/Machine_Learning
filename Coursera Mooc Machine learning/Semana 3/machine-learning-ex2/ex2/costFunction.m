function [J, grad] = costFunction(theta, X, y)
% COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

grad = zeros(size(theta));
% You need to return the following variables correctly 
h0=sigmoid(X*theta);

J = (1/m)*sum((-y'.*log(h0)')-(1-y)'.*log(1-h0)');% Mi primer intento, 
                                                  % para computar la funcion de costos
                                                  % el detalle creo que esta en el theta'*x 
                                                  % usado en la funcion sigmoid ya definida g()
for i = 1:m

grad = grad + ( h0(i) - y(i) ) * X(i, :)';

end

gradient = (1/m) * grad;

% grad =  (1/m)*sum(h0-y)*X; % defino el gradiente nuevamente utilizando 
                             % la funcion de sigmoid,tengo la duda es conrespecto
                             % a que son 2 X y no se como eso lo ejecuta 

% Note: grad should have the same dimensions as theta

end
