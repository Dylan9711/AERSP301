% Input:NULL
% Output:Inverse of matrix A
% X>____________________________
% Y|                           |
%  |                           |
%  |                           |
%  |                           |
%  |                           |
%  |                           |
%  |                           |
%  -----------------------------
clc
clear

A = [1 2 0 0 0 0 0;
     1 3 1 0 0 0 0;
     0 2 4 1 0 0 0;
     0 0 1 3 1 0 0;
     0 0 0 1 2 2 0;
     0 0 0 0 1 1 1;
     0 0 0 0 0 2 1]; %Original Matrix

[y,x] = size(A);


gamma = zeros(1,x);
beta = zeros(1,x);
alpha = zeros(1,x);

gamma(1) = A(1,1);
%Initialize 2 matrixes
L = eye(x);
U = zeros(x);

counter = 2;
while counter < x+1
    alpha(counter) = A(counter,counter-1)/gamma(counter-1);
    beta(counter-1) = A(counter-1,counter);
    gamma(counter) = A(counter,counter)-alpha(counter)*beta(counter-1);
    L(counter, counter-1) = alpha(counter);
    U(counter-1,counter-1) = gamma(counter-1);
    U(counter-1,counter) = beta(counter-1);
    counter = counter+1;
end
U(y,x) = gamma(x);

inv_L = get_invL (L,y,x);

inv_A = get_invA(U,inv_L,y,x);

fileID = fopen('AERSP313_Project2_Outputs.txt','wt');
fprintf(fileID, 'The matix L is:\n');
output(L,y);

