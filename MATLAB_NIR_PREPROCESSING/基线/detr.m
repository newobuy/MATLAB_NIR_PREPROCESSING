function z = detr(x,n)
%����ʽȥ�����ߣ�nΪ����ʽ�������� n = 0 ʱ���� x ��ɾ����ֵ���� n = 1 ʱ��ȥ���������ơ�
a = x';
b = detrend(a,n);
z = b';
end

