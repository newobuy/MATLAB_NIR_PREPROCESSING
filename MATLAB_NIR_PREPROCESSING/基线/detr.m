function z = detr(x,n)
%多项式去除基线，n为多项式次数，当 n = 0 时，从 x 中删除均值。当 n = 1 时，去除线性趋势。
a = x';
b = detrend(a,n);
z = b';
end

