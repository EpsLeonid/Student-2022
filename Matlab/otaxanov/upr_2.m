function [s] = upr_2(h,l,M,t,y)
d=1:length(t);
p=1:length(t);
r=1:length(t);
s=1:length(t);
for i=1:length(t)
    if t(i)>=h&&t(i)>=h+l
        d(i)=y(i)-y(i-h)-y(i-l)+y(i-h-l);
    else (t(i)<h) && (t(i)<h+l);
        d(i)=0;
    end
end
for i=1:length(t)
    if t(i)>=0
        p(i)=p(i-1)+d(i);
    else lt(t(i),0) % lt(t(i)<0
        p(i)=0;
    end
end
for i=1:length(t)
    r(i)=p(i)+M*d(i);
end
for i=1:length(t)
    if t(i)>=0
        s(i)=s(i-1)+r(i);
    else lt(t(i),0) % lt(t(i)<0
        s(i)=0;
    end
end
end