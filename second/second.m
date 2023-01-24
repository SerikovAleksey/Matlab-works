subplot(2, 2, 1);
T = 0.002;
f = 22050;
A = 0.7;
tt = linspace(0, T, T*f);
sig = my_function(tt, T, A);
plot(tt, sig);
xlabel('Время, с');
ylabel('Амплитуда сигнала');
grid on;
title('Единичный сигнал');


subplot(2, 2, 2);
n = 1;
a = round(n/T);
sig_1 = repmat(sig, a);
tt_1 = linspace(0, T*a, length(sig_1));
plot(tt_1, sig_1);
xlim([0 0.01]);
xlabel('Время, с');
ylabel('Амплитуда сигнала');
grid on;
title('Периодический сигнал');


subplot(2, 2, 3);
fft_sig = fft(sin(tt));
p2 = abs(fft_sig/length(fft_sig));
p1 = p2(1:length(fft_sig)/2 + 1);
p1(2:end - 1) = 2*p1(2:end - 1);
plot(tt, p1);
