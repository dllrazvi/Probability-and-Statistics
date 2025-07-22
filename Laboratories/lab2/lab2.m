pkg load statistics;
disp('Select a distribution:');
disp('1. Normal Distribution');
disp('2. t-Distribution');
disp('3. F-Distribution');
distribution_choice = input('Enter the number for the desired distribution: ');

if distribution_choice == 1
    % Normal Distribution
    p_less_than_zero = normcdf(0); % P(x <= 0)
    p_greater_than_zero = 1 - p_less_than_zero; % P(x >= 0)

    disp(['P(x <= 0) for normal distribution: ' num2str(p_less_than_zero)]);
    disp(['P(x >= 0) for normal distribution: ' num2str(p_greater_than_zero)]);

elseif distribution_choice == 2
    % t-Distribution
    nu = input('Enter the degrees of freedom for the t-distribution: ');
    p_less_than_zero_t = tcdf(0, nu); % P(x <= 0)
    p_greater_than_zero_t = 1 - p_less_than_zero_t; % P(x >= 0)

    disp(['P(x <= 0) for t-distribution: ' num2str(p_less_than_zero_t)]);
    disp(['P(x >= 0) for t-distribution: ' num2str(p_greater_than_zero_t)]);

elseif distribution_choice == 3
    % F-Distribution
    dfn = input('Enter the degrees of freedom for the numerator: ');
    dfd = input('Enter the degrees of freedom for the denominator: ');
    p_less_than_zero_f = fcdf(0, dfn, dfd); % P(x <= 0)
    p_greater_than_zero_f = 1 - p_less_than_zero_f; % P(x >= 0)

    disp(['P(x <= 0) for F-distribution: ' num2str(p_less_than_zero_f)]);
    disp(['P(x >= 0) for F-distribution: ' num2str(p_greater_than_zero_f)]);

else
    disp('Invalid choice. Please enter a valid number for the distribution.');
end

