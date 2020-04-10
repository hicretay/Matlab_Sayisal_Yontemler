clc
clear
f=[5.3 7.8 7.6 9.7 10.5 12.6];
x=[66 85 70 140 95 125];
y=[1.5 2.6 0.6 1.3 2.7 1.6];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
n=length(x);
Xi=sum(x);
Yi=sum(y);
Fi=sum(f);
Xi2=sum(x.^2);
Yi2=sum(y.^2);
XY=sum(x.*y);
FY=sum(f.*y);
FX=sum(f.*x);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Q=[n Xi Yi;Xi Xi2 XY;Yi XY Yi2];
W=[Fi;FX;FY];
%%%%%%%%%%----Gauss Eliminasyon-----%%%%%%%%%%%%%%
[r,~]=size(Q);
e = zeros(r,1);

for i = 1:r-1
    m = Q(i+1:r,i)/Q(i,i);
    Q(i+1:r,:)=Q(i+1:r,:)-m*Q(i,:);
    W(i+1:r,:)=W(i+1:r,:)-m*W(i,:);
end

e(r,:)=W(r,:)/Q(r,r);
for i = r-1:-1:1
    e(i,:) = (W(i,:)-Q(i,i+1:r)*e(i+1:r,:))/Q(i,i);
end
A0=e(1,1);
A1=e(2,1);
A2=e(3,1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
F=A0+A1*x+A2*y
rmse=sqrt(((sum(f)-sum(F))^2/n))