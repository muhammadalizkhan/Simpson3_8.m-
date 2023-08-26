  % Define the function to be integrated
func = @(x) exp(-x);

% Limits of integration
a = 0;
b = 2;

% Number of subintervals
n = 8;

% Calculate the integral using Simpson's 1/3 rule
integral_value = simpson13_integration(func, a, b, n);

fprintf('Example 3: Approximate integral value: %f\n', integral_value);
