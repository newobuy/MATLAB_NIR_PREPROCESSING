function [x_msc]=msc(X,Ref)
% Pretreated your spectra with MSC (Multiplicative Scatter Correction).

% input:
% x data to pretreat
%
% output:
% x_msc pretreated data

% If the user do not choose a reference vector, that will be the mean of x
if nargin<2
    Ref=mean(X);
end

[m, n]=size(X); % Size of x
mz=[ones(1,n); Ref]';
wmz=mz.*ones(n,2);
wz=X.*ones(m,n);
z=wmz'*wmz;
[u,s,v]=svd(z); % Singular value decomposition, � enlever?
sd=diag(s)'; % � enlever?
cn=10^12; % � enlever?
ms=sd(1)/sqrt(cn); % � enlever?
cs=max(sd,ms);  % � enlever?
zi=u*(diag(cs))*v';  % � enlever?
B=(zi\(wmz'*wz'))'; % si enleve, zi=z
x_msc=(X-(B(:,1)*ones(1,n)))./(B(:,2)*ones(n,1)'); % MSC correction
end