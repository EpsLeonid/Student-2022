function [y]  = func_exp( A, tau1, tau2, t )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
k = length(t);
y = 1:k; %задание массива для ф-ции y
for i=1:k %цикл записывает значения y
    if t(i)<0
        y(i)=0; %значение y при t<0
    else t(i)>=0
        y(i)=A*(exp(-t(i)/tau1)-exp(-t(i)/tau2)); %значение y при t>=0
    end
end
end