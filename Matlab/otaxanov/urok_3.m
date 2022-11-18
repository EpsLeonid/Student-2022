function [s] = urok_3(l,M,t,y)

d = 1:length(y);
p = 1:length(y);
r = 1:length(y);
s = 1:length(y);
d(1)=0;
p(1)=0;
r(1)=0;
s(1)=0;
for i=1:length(y)
    if i<=l
        d(i)=y(i);
    elseif i>l&&i<=2*l
        d(i)=y(i)-2*y(i-l);
    else
        d(i)=y(i)-2*y(i-l)+y(i-2*l);
    end
end
for i = 2:length(t)  %ge == (>=)
       p(i) = p(i - 1) + d(i);
       r(i) = p(i) + M * d(i);
       s(i) = s(i - 1) + r(i);
end
end
%if i<k
%   if k<i<2*k
%d(i) = y(i) - y(i - k) - y(i - l) + y(i - k - l);
 %ge == (>=)
 %gt == (>)
 %le == (<=)
 %lt == (<)