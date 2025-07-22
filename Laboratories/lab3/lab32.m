clc
clf

while(p<0.05 || p>0.95)
  p = input('Enter probability of succes: ');
end

for n=1:1:100
  mu= n*p;
  sigma=sqrt(n*p-(1-p));
  k=0:3:n;
  y1=binopdf(k,n,p);
  y2=normpdf(k,mu,sigma);
  plot(k,y1,k,y2);
  title("n= ",n);
  legend("bino","pdf");
end

  fprintf("%9f",p);
