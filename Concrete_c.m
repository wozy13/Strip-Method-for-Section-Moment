function sigmac=Concrete_c(ec,ctype)
if nargin<2
    ctype=30;
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
    fprintf('Incorrect input for concrete type, please check your input again!')
end
len=length(ec);
for i=1:len
    if ec(i)<=e0
        sigmac(i)=fc*(1-(1-ec(i)/e0)^n);
    elseif (ec(i)>e0)&&(ec(i)<ecu)
        sigmac(i)=fc;
    else
        sigmac(i)=0;
    end
end
end