function z = asls(x)
a = x';
[~,n] = size(a);
for i = 1:n
    b = a(:,i);
    k(:,i) = asysm(b,1e7,0.001,2);%�����������asysm
end
z = x-k';%��ȥ����
end



