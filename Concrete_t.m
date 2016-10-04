function sigmat=Concrete_t(et,ctype,pull_limit)
if nargin<3
    pull_limit=2*10^(-4);
    if nargin<2
        ctype=30;
    end
end
if ctype==30
    ft=1.43;
    fc=14.3;
    e0=0.002;
    ecu=0.0033;
    n=2;
elseif ctype==50
    ft=1.89;
    fc=23.1;
    e0=0.002;
    ecu=0.0033;
    n=2;
elseif ctype==60
    ft=2.04;
    fc=27.5;
    e0=0.00205;
    ecu=0.0032;
    n=1.83;
elseif ctype==20
    ft=1.10;
    fc=9.6;
    e0=0.002;
    ecu=0.0033;
    n=2;
elseif ctype==45
    ft=1.80;
    fc=21.2;
    e0=0.002;
    ecu=0.0033;
    n=2;
else
    fprintf('Incorrect input for rebar type, please check your input again!')
end
et0=0.65*10^(-4)*ft^(0.54);
alpha=0.312*ft^2;
etu=pull_limit;
len=length(et);
for i=1:len
    if et(i)<=et0
        sigmat(i)=ft*(1.2*(et(i)/et0)-0.2*(et(i)/et0)^6);
    elseif (et(i)>et0)&&(et(i)<etu)
        sigmat(i)=ft*(et(i)/et0)/(alpha*((et(i)/et0)-1)^1.7+(et(i)/et0));
    else
        sigmat(i)=0;
    end
end
end
