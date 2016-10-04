%% Author = Zhongyuan Wo
% Nov-22-2015
%% Calculation of the relationship between moment and curvature on beam
% section, based on strip method.

%% Begin
function []= MyTest(b,h0,As,ctype,rtype,pull_limit) %ctype是混凝土等级，rtype是钢筋等级，pull_Limit是由用户输入的混凝土极限拉应变
if nargin<6 %判断输入参数的数量
    pull_limit=2*10^(-4);
    if nargin<5 
        rtype=335;
        if nargin<4
            ctype=30;
            if nargin<3
                As=1000;
                if nargin<2
                    h0=500;
                    if nargin<1
                        b=200;
                    end
                end
            end
        end
    end
end

%% Main part of this program. (To solve the epsilon_c via Newton Method)
for phi=10^(-10):10^(-10):2*10^(-8)
    ec(1)=0.99*h0*phi
    ec(2)=0.01*h0*phi;
    abs(MyError(b,h0,As,ec(1),phi,ctype,rtype,pull_limit));
    [Err,M]=MyError(b,h0,As,ec(1),phi,ctype,rtype,pull_limit);
end
end    
    
        