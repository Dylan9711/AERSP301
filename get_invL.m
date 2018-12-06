


function inv_L = get_invL(L)

%Row, column counters for the matrix
[y,x] = size(L);


Z = zeros(x);
B = eye(x);
z_x = 1;
%Move horizontal
while z_x < x+1
Z(1,z_x) = B(1,z_x);
z_y = 1;

%move vertical
    while z_y < y+1
    c_1 = 1;
    sum = 0;
    
        while c_1 < z_y %Get the sume of elements after minus
            sum = sum + L(z_y,c_1)*Z(c_1,z_x);
            c_1 = c_1+1;
        end

    Z(z_y,z_x)=B(z_y,z_x)-sum;
    z_y = z_y+1;
    end
    
z_x = z_x+1;
end

inv_L = Z;
end


