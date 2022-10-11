function [y]  = func_exp( A, tau1, tau2, t )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
k = length(t);
y = 1:k;
for i=1:k
    if t(i)<0
        y(i)=0;
    else t(i)>=0
        y(i)=A*(exp(-t(i)/tau1)-exp(-t(i)/tau2));
    end
end
end