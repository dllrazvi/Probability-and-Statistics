N=input("Enter the number of simulations: ");
p=input("Enter the probability(0>=p>=1): ");
U=rand(1,N);
X=(U<p)
U_X=[0 1]
n_X=hist(X,length(U_X));
rel_freq=n_X/N

