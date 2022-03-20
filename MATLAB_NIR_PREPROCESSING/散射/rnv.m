function [x_rnv] = rnv(x,p)
% Pretreated your spectra with RNV (Robust Normal Variate).

% input:
% x data to pretreat
% p 百分比
% output:
% x_rnv pretreated data

[m,n]=size(x); % Size of x
xp=prctile(x,p,2); % 百分位数
xc=x-repmat(xp,1,n); % x center on their 百分位数
for i=1:m
    c=x(i,:);
    index=c<=xp(i);
    as{i}=c(index);
    xd(i)=std(as{i});
end
x_rnv=xc./repmat(xd',1,n);
end


