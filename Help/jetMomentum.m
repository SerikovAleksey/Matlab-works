function M_jet = jetMomentum(F_jet, betta, L)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
M_jet = sqrt(F_jet(1)^2 + F_jet(2)^2) * cos(betta) * L / 2;
end