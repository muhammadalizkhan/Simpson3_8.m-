% Define the function to be integrated
func = @(x) x.^3 + 2*x.^2 - 5*x + 3;

% Limits of integration
a = -1;
b = 2;

% Number of subintervals
n = 10;

% Calculate the integral using Simpson's 1/3 rule
integral_value = simpson13_integration(func, a, b, n);

fprintf('Example 4: Approximate integral value: %f\n', integral_value);
