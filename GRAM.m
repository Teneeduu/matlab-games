clear;
clc;
A=[76 96 85 35;26 55 26 20;51 14 82 26;70 15 25 62;90 26 93 48];
l=size(A);
n=l(1);
m=l(2);
b(:,1)=A(:,1);
a(:,1)=b(:,1)/(norm(b(:,1),2));
for i=2:m
    b(:,i)=A(:,i)-(sum(A(:,i).*a(:,i-1)))*a(:,i-1);
    a(:,i)=b(:,i)/(norm(b(:,i),2));
end
Q=[a(:,1:m)];
R=Q'*A;
f=Q*R;

