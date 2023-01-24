function [rho] = airDensity(y)

rho0 = 1;
T = 300;
R = 8.31;
M = 0.029; 
g = 9.8;

rho = rho0 * exp((-M * g * y) / (R * T));

end