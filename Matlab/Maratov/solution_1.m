A = 1;                          %const 1
t1 = 16;                        %const 2
t2 = 5;                         %const 2
t = -10:1:100;                  %massive significant t
y = new_func(A, t1, t2, t);     %call function y
figure;                         %window is called to draw the diagram
plot(t,y);                      %plot y from t
k = 7;                          %const 4
l = 16;                         %const 5
m = new_func(k, l, t, y);       %call function m
figure;                         %window is called to draw the diagram
plot(t, s);                     %plot m from t