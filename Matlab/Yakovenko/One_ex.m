A=1;
tau1=16;
tau2=5;
t=-10:1:100;
y = func_exp(A, tau1, tau2, t);
figure;
plot(t,y);