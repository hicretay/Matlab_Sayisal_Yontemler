clc
clear

a=[1 2 -1 ; -2 1 3 ; 2 -2 -1];
b=[-6;5;3];

a1 = a;
a1(:,1) = b;
a2 = a;
a2(:,2) = b;
a3 = a;
a3(:,3) = b ;

d=det(a);
d1=det(a1);
d2=det(a2);
d3=det(a3);

x(1)=d1/d;
x(2)=d2/d;
x(3)=d3/d;
x