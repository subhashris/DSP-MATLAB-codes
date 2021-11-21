% Circular convolution using formula 
clc;
clear all;
close all;
x1 = input("Enter input sequence x:");
h1 = input("Enter input sequence h:");
n1 = length(x1);
k1 = 0:n1-1;
n2 = length(h1);
k2 = 0:n2-1;
p = max(n1,n2);
H = 0:p-1;
if(n1<n2)
    x1 = [x1,zeros(1,p-n1)];
end
if(n1>n2)
    h1 = [h1,zeros(1,p-n2)];
end
y = zeros(1,p);
for n=0:p-1
    for k=0:p-1
        z=mod(n-k,p);
        y(n+1)=y(n+1)+x1(k+1).*h1(z+1)
    end
end
disp(y);
subplot(3,1,1);
stem(x1);
xlabel("time sample");
ylabel("amplitude");
title("x");
subplot(3,1,2);
stem(h1);
xlabel("time sample");
ylabel("amplitude");
title("h");
subplot(3,1,3);
stem(y);
xlabel("time sample");
ylabel("amplitude");
title("circular convolution");
