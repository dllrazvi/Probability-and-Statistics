clc
clf
pkg load statistics;
alpha=input("Enter the alpha: ");
model= input("Choose the model (Normal, Student, Fisher, Chi): ");
switch(model)
    case "Normal"
        nu=input("u: ");
        sigma= input("input sigma: ");
        all=normcdf(all, nu, sigma);
        a=norminv(alpha);
    case "Student"
        n=input("input n: ");
        all=tcdf(0,n);
        b=invt(alpha, n);
    case "Fisher"
        m= input("input m: ");
        n= input("input n: ");
        all= fcdf(0,n,m);
        c=finv(alpha,m,n);
    case "Chi"
        m= input("input m: ");
        n= input("input n: ");
        all=chi2cdf(0,n,m);
        d=chi2inv(alpha,m,n);
        d2=chi2inv(beta, m, n);
     otherwise
        fprintf("invalid model");

end
