pkg load statistics
X1 = [46, 37, 39, 48, 47, 44, 35, 31, 44, 37];
X2 = [35, 33, 31, 35, 34, 30, 27, 32, 31, 31];

n1 = length(X1);
n2 = length(X2);
m1 = mean(X1);
m2 = mean(X2);
v1 = var(X1);
v2 = var(X2);

% a) At the 5% significance level, do the population variances seem to
% differ?

% H0: population variances are equal
% H1: population variances differ

fprintf("POINT a)\n");
fprintf("The null hypothesis H0: population variances are equal\n");
fprintf("The alternative hypothesis H1: population variances differ\n");

alpha = 0.05;
% Use vartest2 for variances test
[H, P, CI, STATS] = vartest2(X1, X2, 'Alpha', alpha);

if H == 0
    fprintf("\nThe null hypothesis is not rejected!\n");
    fprintf("The population variances are equal!\n");
else
    fprintf("\nThe null hypothesis is rejected!\n");
    fprintf("The population variances differ!\n");
end

fprintf("For the variances test we have:\n");
fprintf("The P-value is %.4f\n", P);
fprintf("The statistics test value is %.4f\n", STATS.fstat);
fprintf("The value of H is %1f\n", H);

% b) Find a 95% confidence interval for the difference of the average
% assembling times.

% Use ttest2 for confidence interval
[H, P, CI, STATS] = ttest2(X1, X2, 'Alpha', alpha);

fprintf("\nb)\n");
fprintf("The 95 confidence interval is: (%.4f, %.4f)\n", CI(1), CI(2));
