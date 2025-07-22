disp('Select a distribution:');
disp('1. Normal Distribution');
disp('2. t-Distribution');
disp('3. F-Distribution');
distribution_choice = input('Enter the number for the desired distribution: ');

if distribution_choice == 1
    % Normal Distribution
    p_between_minus1_and_1 = normcdf(1) - normcdf(-1); % P(-1 <= x <= 1)
    p_less_than_minus1_or_greater_than_1 = 1 - p_between_minus1_and_1; % P(x <= -1 or x >= 1)

    disp(['P(-1 <= x <= 1) for normal distribution: ' num2str(p_between_minus1_and_1)]);
    disp(['P(x <= -1 or x >= 1) for normal distribution: ' num2str(p_less_than_minus1_or_greater_than_1)]);

elseif distribution_choice == 2
    % t-Distribution
    nu = input('Enter the degrees of freedom for the t-distribution: ');
    p_between_minus1_and_1_t = tcdf(1, nu) - tcdf(-1, nu); % P(-1 <= x <= 1)
    p_less_than_minus1_or_greater_than_1_t = 1 - p_between_minus1_and_1_t; % P(x <= -1 or x >= 1)

    disp(['P(-1 <= x <= 1) for t-distribution: ' num2str(p_between_minus1_and_1_t)]);
    disp(['P(x <= -1 or x >= 1) for t-distribution: ' num2str(p_less_than_minus1_or_greater_than_1_t)]);

elseif distribution_choice == 3
    % F-Distribution
    dfn = input('Enter the degrees of freedom for the numerator: ');
    dfd = input('Enter the degrees of freedom for the denominator: ');
    p_between_minus1_and_1_f = fcdf(1, dfn, dfd) - fcdf(-1, dfn, dfd); % P(-1 <= x <= 1)
    p_less_than_minus1_or_greater_than_1_f = 1 - p_between_minus1_and_1_f; % P(x <= -1 or x >= 1)

    disp(['P(-1 <= x <= 1) for F-distribution: ' num2str(p_between_minus1_and_1_f)]);
    disp(['P(x <= -1 or x >= 1) for F-distribution: ' num2str(p_less_than_minus1_or_greater_than_1_f)]);

else
    disp('Invalid choice. Please enter a valid number for the distribution.');
end

