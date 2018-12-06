



function inv_A = get_invA(U,Z)

%Row, column counters for the matrix
[y,x] = size(U);


inv_A = zeros(x);
A_x = x;
while A_x>0
    A_y = y;
    while A_y>0
        c_1 = y - A_y;
        sum = 0;
        while c_1 > 0
            sum = sum + U(A_y,x-c_1+1)*inv_A(x-c_1+1,A_x);
            c_1 = c_1-1;
        end
        inv_A(A_y,A_x) = (Z(A_y,A_x)-sum)/U(A_y,A_y);
        A_y = A_y-1;
    end
    A_x = A_x-1;
end
end