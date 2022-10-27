function [ y ] = new_func( A, t1, t2, t )
%NEW_FUNC Summary of this function goes here
%   Detailed explanation goes here

k = length(t);
y = 1:k;
for i = 1:k
    if t(i)<0
        y(i)=0;
    else ge(t(i),0) %ge(t(i)>=0)
        y(i) = A * (exp(-t(i)/t1)-exp(-t(i)/t2));
    end
end

end

