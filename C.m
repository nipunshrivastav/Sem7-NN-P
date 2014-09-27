function result = C(i,m,r,x,length)

sum = 0;
for j = 1:length - m +1
    sum = sum + (theta(r - wierdDistance(i,j,m)));
end

result = (1/(length - m +1)) * sum;