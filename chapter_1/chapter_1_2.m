clc
clear
syms t T

% Define the function x(t) symbolically
x = 3*pi*sin(8*pi*t + 1.3) .* cos(4*pi*t - 0.8) .* exp(sin(12*pi*t));
x_squared = abs(x).^2;

% Calculate the energy E
Ey = limit(int(x_squared, t, -T/2, T/2), T, inf);

% Calculate the average power P
Px = limit((1/T) * int(x_squared, t, -T/2, T/2), T, inf);

disp('Px:');
disp(Px);
disp('Ey:');
disp(Ey);

% Define time vector for plotting
t_vals = 0:0.01:1;

% Numerical evaluation of the function
x_vals = 3*pi*sin(8*pi*t_vals + 1.3) .* cos(4*pi*t_vals - 0.8) .* exp(sin(12*pi*t_vals));
y_vals = 0.*(t_vals < 0.2) + x_vals.*(t_vals >= 0.2) - x_vals.*(t_vals > 0.70);

% Plot the results
figure;
subplot(2,1,1);
plot(t_vals, x_vals);
axis([0 1 -10 25]); grid on;
title('Signal x(t)');

subplot(2,1,2);
plot(t_vals, y_vals);
axis([0 1 -10 25]); grid on;
title('Signal y(t)');
