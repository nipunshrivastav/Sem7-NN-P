function result = wierdDistance(i,j,m)
    global eucDistVect;
    maxi = 0;
    for k =1:m
        maxi = max(maxi,eucDistVect(i+k-1,j+k-1));
    end
result = maxi;