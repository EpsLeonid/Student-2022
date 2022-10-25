A = 1;
t1 = 16;
t2 = 5;
t = -10:100;
for i = 1:length(t)
    if le(0,t(i))
        y(i) = A * (exp(-t(i)/t1)-exp(-t(i)/t2));
    else le(t(i),0)
        y(i) = 0;
    end
end;
figure;
plot(t,y)