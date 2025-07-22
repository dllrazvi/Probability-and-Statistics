pkg load statistics;
X = [3.26, 1.89, 2.42, 2.03, 3.07, 2.95, 1.39, 3.06, 2.46, 3.35, 1.56, 1.79, 1.76, 3.82, 2.42, 2.96];
n = length(X);
m = mean(X);
s = std(X);
alpha = 0.05; % 5% significance level
m0 = 3; % Hypothesized mean

%a) at the 5% significance level, on average, do these nickel particles seem to be smaller than 3?

[H, P, CI, STATS] = ttest(X, m0, 'alpha', alpha, 'tail', 'left');

% Display results
fprintf("Hypothesis test results:\n");
if H == 0
    fprintf("The null hypothesis is not rejected. Mean size is not significantly smaller than 3.\n");
else
    fprintf("The null hypothesis is rejected. Mean size is significantly smaller than 3.\n");
end

fprintf("P-value:%.4f\n", P);
fprintf("Test Statistic: %.4f\n", STATS.tstat);
alpha=input("Significance level %d\n");

### B. Confidence Interval for Standard Deviation
%Objective: To find a 99% confidence interval for the standard deviation of the size of nickel particles.

alpha = 0.01; % 1% significance level for a 99% confidence interval
df = n - 1; % degrees of freedom
chi2_lower = chi2inv(alpha/2, df);
chi2_upper = chi2inv(1 - alpha/2, df);

% Confidence interval for variance
var_lower = (n-1)*s^2 / chi2_upper;
var_upper = (n-1)*s^2 / chi2_lower;

% Confidence interval for standard deviation (square root of variance)
std_lower = sqrt(var_lower);
std_upper = sqrt(var_upper);

% Display results
fprintf("\n99%% Confidence interval for standard deviation of nickel particle size:\n");
fprintf("Lower bound: %.4f, Upper bound: %.4f\n", std_lower, std_upper);

