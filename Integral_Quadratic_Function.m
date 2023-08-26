% Define the function to be integrated
func = @(x) x.^2;

% Limits of integration
a = 0;
b = 1;

% Number of subintervals
n = 4;

% Calculate the integral using Simpson's 1/3 rule
integral_value = simpson13_integration(func, a, b, n);

fprintf('Example 1: Approximate integral value: %f\n', integral_value);
