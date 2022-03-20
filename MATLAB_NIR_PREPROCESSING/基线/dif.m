function z = dif(x,n)
%导数，n为阶数
m=15.428;%m为光谱间隔
z=diff(x,n,2)./m;
end

