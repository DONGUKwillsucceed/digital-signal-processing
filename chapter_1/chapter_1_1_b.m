t=-1:0.01:3;
A=1;
f0=1;
phi=[0, pi/3, -pi/3];

x0=A*cos(2*pi*f0*t + phi(1));
x1=A*cos(2*pi*f0*t + phi(2));
x2=A*cos(2*pi*f0*t + phi(3));

axis([-1 3 -1.2 1.2])
plot(t, x0, '--r', t, x1, '-.b', t, x2, 'k');