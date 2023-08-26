>> clc
clear

f = @(x) 2 ./ (x.^3 + 4);
a = input('Enter lower limit a: ');
b = input('Enter upper limit b: ');
n = input('Enter the number of sub-intervals n: ');

h = (b - a) / n;
% Check if n is not a multiple of 3
if rem (n, 3) ~=0
fprintf('\n Enter valid n!!!'); n=input ('\n Enter n as multiple of 3: ');
end

So = 0;
sm3 = 0;

x = zeros(1, n - 1);
y = zeros(1, n - 1);

for k = 1:1:n - 1
    x(k) = a + k * h;
    y(k) = f(x(k));
    if rem(k, 3) == 0
        sm3 = sm3 + y(k); % Sum of terms at multiples of 3
    else
        So = So + y(k);   % Sum of other terms
    end
end

answer = (3 * h / 8) * (f(a) + f(b) + 3 * So + 2 * sm3);

fprintf('\nApproximate integral value: %.6f\n', answer);
