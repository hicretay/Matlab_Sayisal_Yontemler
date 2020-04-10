clc
clear
x=[1 2 3 4 5 6 7 8 9 10];
y=[1.3 3.5 4.2 5.0 7.00 8.8 10.1 12.5 13.0 15.6];
n = 10;
j = sum(x);
k = sum(y);
l = sum(x.^2);
m = sum(y.^2);
r2 = sum(x.*y);
b = (n*r2 - k*j)/(n*l - j^2);
a = (k - b*j)/n;
j = b*(r2 - j*k/n);
m = m - k^2/n;
k = m - j;
r2 = j/m;
rmse = sqrt(r2);
k2 = sqrt(k/(n-2));
y0 = a + b;
rmse
a,b
plot(x,y,'ro',x,y,'b');