% Define the function to be integrated
func = @(x) sin(x);

% Limits of integration
a = 0;
b = pi;

% Number of subintervals
n = 6;

% Calculate the integral using Simpson's 1/3 rule
integral_value = simpson13_integration(func, a, b, n);

fprintf('Example 2: Approximate integral value: %f\n', integral_value);
