



function inv_A = get_invA(U,Z,y,x)
inv_A = zeros(x);
A_x = x;
while A_x>0
    A_y = y-1;
    inv_A(y,A_x) = Z(y,A_x)/U(y,x);
    while A_y>0
        c_1 = y - A_y;
        sum = 0;
        while c_1 > 0
            sum = sum + U(A_y+1,c_1+1)*inv_A(c_1+1,A_x);
            c_1 = c_1-1;
        end
        inv_A(A_y,A_x) = (Z(A_y+1,A_x)-sum)/U(A_x,A_x);
        A_y = A_y-1;
    end
    A_x = A_x-1;
end
end