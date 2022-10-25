function [s] = filtr_ex(l,M,t,y)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
d=1:length(y); %������ �-��� d
p=1:length(y); %������ �-��� p
r=1:length(y); %������ �-��� r
s=1:length(y); %������ �-��� s
d(1)=0; %������ ������� d ����� 0
p(1)=0; %������ ������� p ����� 0
r(1)=0; %������ ������� r ����� 0
s(1)=0; %������ ������� s ����� 0
for i=1:length(y) %���� ���������� �������� d
    if i<=l
        d(i)=y(i); %�������� d ��� t<=l
    elseif i>l&&i<=2*l
        d(i)=y(i)-2*y(i-l); %�������� d ��� l<t<=2l
    else
        d(i)=y(i)-2*y(i-l)+y(i-2*l); %�������� d ��� t>2l
    end
end
for i=2:length(t) %���� ���������� �������� p, r, s
    p(i)=p(i-1)+d(i); %������������ �������� p
    r(i)=p(i)+M*d(i); %������������ �������� r
    s(i)=s(i-1)+r(i); %������������ �������� s
end
end