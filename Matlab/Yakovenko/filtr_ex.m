function [s] = filtr_ex(h,l,M,t,y)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
d=1:length(t);
p=1:length(t);
r=1:length(t);
s=1:length(t);
for i=1:length(t)
    if t(i)>=h&&t(i)>=h+l
        d(i)=y(i)-y(i-h)-y(i-l)+y(i-h-l);
    else t(i)<h&&t(i)<h+l
        d(i)=0;
    end
end
for i=1:length(t)
    if t(i)>=0
        p(i)=p(i-1)+d(i);
    else t(i)<0
        p(i)=0;
    end
end
for i=1:length(t)
    r(i)=p(i)+M*d(i);
end
for i=1:length(t)
    if t(i)>=0
        s(i)=s(i-1)+r(i);
    else t(i)<0
        s(i)=0;
    end
end
end