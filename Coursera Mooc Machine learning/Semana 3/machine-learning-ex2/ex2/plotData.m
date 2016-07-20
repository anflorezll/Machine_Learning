function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;


pos = find(y==1); neg = find(y == 0);% encuentra y asigna los valores positivos  
                                       % y negativos este es el proceso
                                       % de cluster bajo aprendizaje supervizado

plot(X(pos, 1), X(pos, 2), 'k+'); % grafica los valores positivos 
                                  % asignandoles un '+'= mas como figura
                                                  
plot(X(neg, 1), X(neg, 2), 'ko','MarkerFaceColor', 'y'); % grafica los valores 
                                                     % negativos con 'o'= circulo
                                                     % y con relleno 'y'= amarillo


hold off;

end
