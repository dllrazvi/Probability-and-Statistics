pkg load statistics;
N=input("nr of simulations: ");
p=input("nr of probability: ");
X=zeros(1,N);
for i=1:N
X(i)=0;
  while rand>=p
    X(i)=X(i)+1;
  endwhile;
endfor;
K=0:20;
p_K=geopdf(K,p);
U_X=unique(X);
rel_freq=n_X/N;
n_X=hist(X,length(U_X));
plot(U_X,rel_freq,"*",K,p_K,"o");
