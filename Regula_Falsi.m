clear 
clc
f=@(x)(x^3-5*x^2-2*x+10);
a=1;
b=3;
hatapayi=0.02;
c=(a*f(b)-b*f(a))/(f(b)-f(a));
while (abs(f(c))>hatapayi)
   c=(a*f(b)-b*f(a))/(f(b)-f(a));
    if(f(b)*f(c)<0)
        a=c;
    else
        b=c;
    end
end
f(c)
c
