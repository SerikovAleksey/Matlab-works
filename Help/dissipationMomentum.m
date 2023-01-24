function M = dissipationMomentum(omega, rho, L)

	k = 500;
	M = k * omega .^ 2 * rho * L/2;

end
