function [Err,M]=MyError(b,h,a1,a2,As1,As2,ec,phi,ctype,rtype1,rtype2,pull_limit)
% 1代表受拉区，2代表受压区
if nargin<12
    pull_limit=2*10^(-4);
    if nargin<11
        rtype2=335;
        if nargin<10
            rtype1=335;
            if nargin<9
                ctype=30;
            end
        end
    end
end
if phi~=0
    xn=ec/phi;
    es1=phi*(h-a1-xn);
    es2=phi*(xn-a2);
    y=0:xn/1000:xn;
    e=phi*y;
    %% 受压区混凝土
    C=trapz(y,Concrete_c(e,ctype))*b;
    yc=trapz(y,y.*Concrete_c(e,ctype))*b/C;

    %% 受拉区混凝土
    xt=pull_limit/phi;
%     if xt<h0-xn
%         y=0:xt/1000:xt;
%         e=phi*y;
%         Tc=trapz(y,Concrete_t(e,ctype,pull_limit))*b;
%         yt=trapz(y,y.*Concrete_t(e,ctype,pull_limit))*b/Tc;
%     else
        y=0:((h-a1)-xn)/1000:(h-a1)-xn;
        e=phi*y;
        Tc=trapz(y,Concrete_t(e,ctype,pull_limit))*b;
        yt=trapz(y,y.*Concrete_t(e,ctype,pull_limit))*b/Tc;
%     end

    %% 受拉区钢筋
%     e=phi*(h0-xn);
    Ts1=As1*Rebar(es1,rtype1);

    %% 受压区钢筋
    Ts2=As2*Rebar(es2,rtype2);
    %% 计算误差
    Err=C+Ts2-Tc-Ts1;
    M=C*yc+Tc*yt+Ts1*(h-a1-xn)+Ts2*(xn-a2);
else
    Err=0;
    M=0;
end
end
