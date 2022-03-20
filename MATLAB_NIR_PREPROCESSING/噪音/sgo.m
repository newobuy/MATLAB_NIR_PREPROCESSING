function z = sgo(x,order,windows)
%order多项式顺序，windows帧长度
a = x';
b = sgolayfilt(a,order,windows);
z = b';
end

