clc
clear
A=[1 2 -1 -6; -2 1 3 5; 2 -2 -1 3];
[h,b]=size(A);
for j=1:h-1
    for z=2:h
        if A(j,j)==0
            t=A(1,:);A(1,:)=A(z,:);
            A(z,:)=t;
        end
    end
    for i=j+1:h
        A(i,:)=A(i,:)-A(j,:)*(A(i,j)/A(j,j));
    end
end

for j=h:-1:2
    for i=j-1:-1:1
        A(i,:)=A(i,:)-A(j,:)*(A(i,j)/A(j,j));
    end
end

for s=1:h
    A(s,:)=A(s,:)/A(s,s);
    x(s)=A(s,b);
end
disp('Gauss-Jordan metodu: ');
A
x'