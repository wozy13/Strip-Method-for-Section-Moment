function sigmas=Rebar(e,rtype)
if nargin<2
    rtype=335;
end
fy=rtype;
Es=200*10^3;
e_s=fy/Es;

for i=1:length(e)    
    if e(i)<e_s&&e(i)>-e_s
        sigmas(i)=Es*e(i);
    elseif e_s<=e(i)
        sigmas(i)=fy;
    elseif e(i)<=-e_s
        sigmas(i)=-fy;
    else 
        sigmas(i)=0;
    end
end
end