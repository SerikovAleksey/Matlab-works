function F_jet = jetForce(betta, alpha, mu)
v_gaz = 10;
F_jet(1) = v_gaz * mu * sin(alpha + betta);
F_jet(2) = v_gaz * mu * cos(alpha + betta);
end