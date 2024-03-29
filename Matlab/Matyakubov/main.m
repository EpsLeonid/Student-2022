clear, clc % очищаем память и окно команд
t = -10:1:100; % задаем массив времени
% параметры сигнала:
tau1 = 16;
tau2 = 5;
y = genfunc(t,tau1,tau2); % генериуем сигнал
subplot(2,1,1) % рисуем график в первом подокне
plot(t,y) % сам график
grid on % вкл. сетку
xlabel('t') % подписываем оь Х
ylabel('y') % подписываем ось Y
title('Исходный сигнал') % подпись графика

s = trpzfilt(y); % пропускаем сигнал через фильтр
subplot(2,1,2) % рисуем график во втором подокне
plot(t,s) % сам график
grid on % вкл. сетку
xlabel('t') % подписываем оь Х
ylabel('s') % подписываем ось Y
title('Отфильтрованный сигнал')