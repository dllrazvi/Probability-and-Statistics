pkg load statistics

X = [ 7 7 4 5 9 9 ...
4 12 8 1 8 7 ...
13 2 1 17 7 ...
12 5 6 2 1 13 ...
14 10 2 4 9 11 ...
3 5 12 6 10 7 ...
];

oneminusalpha = input("Confidence level = :");
alpha = 1 - oneminusalpha;
n = length(X);
sigma = 5;
m1 = mean(X) - sigma/sqrt(n)*norminv(1-alpha/2,0,1);
m2 = mean(X) - sigma/sqrt(n)*norminv(alpha/2,0,1);
printf("THe cconfindence interval for the teoretical mean when sigma is known is (%4.3f,%4.3f)\n",m1,m2);
s = std(X);
m1b= mean(X) - s/sqrt(n)*tinv(1-alpha/2,n-1);
m2b= mean(X) - s/sqrt(n)*tinv(alpha/2,n-1);
printf("THe cconfindence interval for the teoretical mean when sigma is unknown is (%4.3f,%4.3f)\n",m1b,m2b);
ssquared=var(X);
v1 = (n-1)*ssquared/chi2inv(1-alpha/2,n-1);
v2 = (n-1)*ssquared/chi2inv(alpha/2,n-1);
printf("THe cconfindence interval variance is (%4.3f,%4.3f)\n",v1,v2);
s1 = sqrt(v1);
s2 = sqrt(v2);
printf("THe cconfindence interval for the standard deviation (%4.3f,%4.3f)\n",s1,s2);
