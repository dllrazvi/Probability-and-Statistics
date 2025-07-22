% a) Probability that special maintenance is required within the next 9 months
lambda = 1 / 5; % Rate parameter for exponential distribution
p_within_9_months = 1 - exp(-lambda * 9);
disp(['Probability of requiring special maintenance within the next 9 months: ' num2str(p_within_9_months)])

% b) Given no special maintenance in the first 12 months, probability of no maintenance in next 4 months
p_no_maintenance_12_months = exp(-lambda * 12);
p_no_maintenance_next_4_months_given_no_12_months = exp(-lambda * 4);
p_no_maintenance_given_no_12_months = p_no_maintenance_12_months * p_no_maintenance_next_4_months_given_no_12_months;
disp(['Probability of no maintenance within the next 4 months given no maintenance in first 12 months: ' num2str(p_no_maintenance_given_no_12_months)])

