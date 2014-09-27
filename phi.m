function result = phi(m,r,x,length)

sum = 0;
for i = 1:length - m +1
    sum = sum + log(C(i,m,r,x,length));
end

result = (1/(length - m +1)) * sum;