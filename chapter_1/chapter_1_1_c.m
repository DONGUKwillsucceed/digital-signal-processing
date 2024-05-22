t=-1:0.01:3;
A=1;
phi=0;
f0=[1 2 3];

x1=A*cos(2*pi*f0(1)*t+phi);
x2=A*cos(2*pi*f0(2)*t+phi);
x3=A*cos(2*pi*f0(3)*t+phi);

% subplot 생성 방법
% subplot으로 plot이 위치할 곳을 정한다.
% subplot(3,1,1) 3행 1열에 1행
subplot(3,1,1);
plot(t, x1, 'k');
subplot(3,1,2);
plot(t, x2, 'k');
subplot(3,1,3);
plot(t, x3, 'k');
axis([-1 3 -1.2 1.2]);