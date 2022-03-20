function z = nor(x,method)
%'zscore'标准化，'norm'2-范数，'scale'按标准差缩放，'range'将数据范围缩放至 [0,1]，'center'中心化
z=normalize(x,2,method);
end

