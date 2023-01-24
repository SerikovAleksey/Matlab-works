function mu = massFlow(t)

mu(t < 500) = -20;
mu(t >= 500) = 0;

end