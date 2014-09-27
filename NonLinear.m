%% Non Linear Dynamic Features


x = data(1,1,:);
x = reshape(x,8064,1);
x = x';
N = 20;
Fs = 128;
% Sampling Frequency
m = 10;
global eucDistVect;
eucDistVect = zeros(30-m+1,30-m+1);
for i =1:30-m+1
    for j=1:30-m+1
        eucDistVect(i,j) = norm(findy(i,m,x)-findy(j,m,x)); 
    end
end
approxEntropy = Ae(m,10,x,N);