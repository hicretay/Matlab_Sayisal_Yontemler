clc
clear
f=@(x)(3*x*x-4*x);
a=0;
b=1;
n=100;
h=(b-a)/n;

s=0;

for i=0:n-1
    xh=a+(i*h);
    s=s+(f(xh)+f(xh+h))*h/2;
end



