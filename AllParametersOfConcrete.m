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
elseif ctype==15
    ft=0.91;
    fc=7.2;
    e0=0.002;
    ecu=0.0033;
elseif ctype==20
    ft=1.10;
    fc=9.6;
    e0=0.002;
    ecu=0.0033;
elseif ctype==25
    ft=1.27;
    fc=11.9;
    e0=0.002;
    ecu=0.0033;
elseif ctype==35
    ft=1.57;
    fc=14.7;
    e0=0.002;
    ecu=0.0033;
elseif ctype==40
    ft=1.71;
    fc=19.1;
    e0=0.002;
    ecu=0.0033;
elseif ctype==45
    ft=1.80;
    fc=21.2;
    e0=0.002;
    ecu=0.0033;
elseif ctype==55
    ft=1.96;
    fc=25.3;
    e0=0.00202;
    ecu=0.0033;
elseif ctype==65
    ft=2.09;
    fc=29.7;
    e0=0.00207;
    ecu=0.0032;
elseif ctype==70
    ft=2.14;
    fc=31.8;
    e0=0.0021;
    ecu=0.0031;
elseif ctype==75
    ft=2.18;
    fc=33.8;
    e0=0.00212;
    ecu=0.0031;
elseif ctype==80
    ft=2.22;
    fc=35.9;
    e0=0.00215
    ecu=0.003;
else
    fprintf('Incorrect input for rebar type, please check your input again!')
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