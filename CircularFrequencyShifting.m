%Circular frequency shift property
clc;
clear all;
close all;
x = [0 2 4 6 8 10 12 14 16];
N = length(x);
n = 0:N-1;
Xk = fft(x,N);
y = circshift(Xk,[0 5]);
w = exp(j*((2*pi)/N).*n*5);
%w = exp(-j*2*pi*5*n/N);
z = x.*w;
Z = fft(z);
disp("Time domain");
disp(Z);
subplot(2,1,1);
plot(Z);
title("Time domain");
disp("Frequency domain");
disp(y);
subplot(2,1,2);
plot(y);
title("Frequency domain");

