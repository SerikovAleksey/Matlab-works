function beta = cyclogramAngle(t)

beta(t < 80) = 0;
beta(t >= 80 & t < 120) = -0.0001;
beta(t >= 120 & t < 200) = 0;
beta(t >= 200 & t < 240) = 0.00007;
beta(t >= 240) = 0;

end