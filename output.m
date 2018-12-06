
function output(V,y)
n = 1;
m=1;
while m < y+1
while n < y+1
    fprintf(fileID,'%f ',V(m,n));
    n = n+1;
end
    fprintf(fileID,'\n');
m = m+1;
end
end