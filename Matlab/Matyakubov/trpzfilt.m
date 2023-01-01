function s = trpzfilt(v)
% Трапецеидальный фильтр (формулы Б) с параметрами k=9, l=5, M=16
% (Вариант 4)
% v - исходный сигнал
% s - сигнал после фильтрации

k = 9;  l = 5;  M = 16; % параметры фильтра
s = zeros(size(v)); % заготовка из нулей под результат 
for n = 1:length(v) % для каждого значения сигнала
    % начинаем расчет d(n)
    d(n) = v(n); % первое слагаемое
    if n-k>0 % если длинна позволяет
        d(n) = d(n) - v(n-k); % добавляем второе
    end
    if n-l>0 % если длинна позволяет
        d(n) = d(n) - v(n-l); % добавляем третье
    end
    if n-k-l>0 % если длинна позволяет
        d(n) = d(n) + v(n-k-l); % добавляем четвертое
    end    
    
    if n==1 % если n=1 - не используем предыдущие значения (n-1), их нет
        p(n) = d(n); % расчет p(n)
        r(n) = p(n) + M*d(n); % расчет r(n)
        s(n) = r(n); % расчет s(n)
    else % если n>1, то используем предыдущие значения (n-1)
        p(n) = p(n-1) + d(n); % расчет p(n)
        r(n) = p(n) + M*d(n); % расчет r(n)
        s(n) = s(n-1) + r(n); % расчет s(n)
    end
end