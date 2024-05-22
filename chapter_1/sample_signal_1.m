function sample_signal_1(ti, tf, dt, Ts, A, f0, rs, cs, r)
t=ti:dt:tf;
xc=A*cos(2*pi*f0*t);
n=ti:Ts:tf;
xd=A*cos(2*pi*f0*n);
subplot(rs, cs, r);
plot(t, xc, ':r');
axis([ti tf -(1.2*A) 1.2*A]);
hold on;
stem(n, xd); % 이거 뭐지
end