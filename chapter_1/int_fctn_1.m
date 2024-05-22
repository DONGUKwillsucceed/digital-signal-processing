function xs=int_fctn_1(t)
a=4*pi*t;
x=3*pi*sin(2*a+1.3).*cos(a-0.8).*exp(sin(3*a));
xs=x.^2;