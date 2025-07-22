clc
pkg load statistics;
N=input("Number of simulations: ");
n=input("Numbers of trials: ");
p=input("Enter the probability(0>=p>=1): ");
U=rand(n,N);
X=sum(U<p);
K=0:n;
p_K=binopdf(K,n,p);
U_X=unique(X);
rel_freq=n_X/N;
n_X=hist(X,length(U_X));
plot(U_X,rel_freq,"*",K,p_K,"o");
;it doesnt work properly


