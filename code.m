fs = 1000;
Ts = 1/fs;
T = 1;
t_cont = 0:1/fs:T;
t_disc = 0:Ts:T;
f = 5;

y_cont = sin(2*pi*f*t_cont);
y_disc = sin(2*pi*f*t_disc);

figure;
plot(t_cont, y_cont, 'b-', 'LineWidth', 1.5);
hold on;
stem(t_disc, y_disc, 'r', 'LineWidth', 1.5);
hold off;

xlabel('Time (s)');
ylabel('Amplitude');
title('Continuous and Discrete Sine Waves');
legend('Continuous Sine Wave', 'Discrete Sine Wave');
grid on;