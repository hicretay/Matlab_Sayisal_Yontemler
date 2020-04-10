clc
clear
x = [1 2 3 4 5] ;
y = [4 19.7 50.05 97.0 162.06] ;
X=log(x);
Y=log(y);
Xi=sum(log10(x));
Yi=sum(log10(y));
Xi2=sum((log10(x)).^2);
xy=sum((log10(x)).*(log10(y)));
n = length(x) ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
m=[n Xi;Xi Xi2];
c=[ Yi;xy];
A=((Yi*(Xi2))-(xy*Xi))/((n*(Xi2))-(Xi*Xi));
b=((n*xy)-(Xi*Yi))/((n*Xi2)-((Xi)^2));
a=10^A;
f=a*x.^b
rmse=sqrt(((sum(y)-sum(f))^2/n))
