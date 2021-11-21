%Circular time shift property
clc;
clear all;
close all;
x = [0 2 4 6 8 10 12 14 16];
N = length(x);
n = 0:N-1;
y = circshift(x,[0 5]);
Xk = fft(x,N);
Y1 = fft(y);
k = 0:N-1
w = exp(-j*2*pi*k*5/N);
%w = exp(-j*((2*pi)/N).*k*5);
z = Xk.*w;
disp("Time domain");
disp(Y1);
subplot(2,1,1);
plot(Y1);
title("Time domain");
disp("Frequency domain");
disp(z);
subplot(2,1,2);
plot(z);
title("Frequency domain");
