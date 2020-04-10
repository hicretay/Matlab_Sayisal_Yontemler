clc
clear

a=1;
b=3;
hata=0.001;
c=(a+b)/2;
while(abs(a-b)>=hata)
    fa=(a^3-a^2+2*a-3);
    fb=(b^3-b^2+2*b-3);
    c=(a+b)/2;
    fc=(c^3-c^2+2*c-3);
    
    if(fa*fc<0)
        b=c;
    else
        a=c;
    end
end
c