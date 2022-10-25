function [s] = filtr_ex(l,M,t,y)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
d=1:length(y); %массив ф-ции d
p=1:length(y); %массив ф-ции p
r=1:length(y); %массив ф-ции r
s=1:length(y); %массив ф-ции s
d(1)=0; %первый элемент d равен 0
p(1)=0; %первый элемент p равен 0
r(1)=0; %первый элемент r равен 0
s(1)=0; %первый элемент s равен 0
for i=1:length(y) %цикл записывает значения d
    if i<=l
        d(i)=y(i); %значение d при t<=l
    elseif i>l&&i<=2*l
        d(i)=y(i)-2*y(i-l); %значение d при l<t<=2l
    else
        d(i)=y(i)-2*y(i-l)+y(i-2*l); %значение d при t>2l
    end
end
for i=2:length(t) %цикл записывает значения p, r, s
    p(i)=p(i-1)+d(i); %записываются значения p
    r(i)=p(i)+M*d(i); %записываются значения r
    s(i)=s(i-1)+r(i); %записываются значения s
end
end