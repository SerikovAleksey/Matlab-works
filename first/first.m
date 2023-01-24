%1
star_names = importdata("star_names.csv");
spectra = importdata("spectra.csv");
lambda_start = importdata("lambda_start.csv");
lambda_delta = importdata("lambda_delta.csv");

%2
amount_stars = numel(star_names);

amount_search = numel(spectra) / amount_stars;

%3
lambda_finish = lambda_start + lambda_delta*(amount_search - 1);
lamda = lambda_start:lambda_delta:lambda_finish;



%4 
const = 656.28;
c = 299792.46;

[n, index] = min(spectra);

%5
l = lambda(index);
z = (l / const) - 1;
speed = z * c;

%6
fig = figure(NextPlot= "add");
hold on;

for k = 1: amount_stars
    curve = plot(lamda, spectra(:, k));
    if speed(k) < 0
        set(curve, 'LineWidth', 1, 'LineStyle', '--') 
    else
        set(curve, 'LineWidth', 3, 'LineStyle', '-'); 
    end
end

%7
ylabel('Интенсивность');
xlabel('Длина волны, нм');
title('Спектр звёзд');
grid minor;
legend(star_names);
hold off;

%8
movaway = star_names(speed > 0);

%9
saveas(fig, "plot", "png")
