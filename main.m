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

%Original Matrix
A = [1 2 0 0 0 0 0;
     1 3 1 0 0 0 0;
     0 2 4 1 0 0 0;
     0 0 1 3 1 0 0;
     0 0 0 1 2 2 0;
     0 0 0 0 1 1 1;
     0 0 0 0 0 2 1]; 


gamma(1) = A(1,1);

%Initialize 2 matrixes, L as an identity matrix and U as a zero matrix

[L, U] = LU_Decomposition(A);


%Steps for calculating A inverse
inv_L = get_invL (L);
inv_A = get_invA(U,inv_L);


%Output statements with description

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Although you could pass all these variables (A, L, U, A, and inv_A into
%one funtion for them to be outputted, it is better code to abstract the
%output function so it does not depend on its inputs and can be reused for
%any object and any description
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


output(A, 'The original matrix is: ');
output(L, 'The Lower triangular matrix is: ');
output(U, 'The Upper triangular matrix is: ');
output(inv_A, 'The inverse of matrix A is: ');
output(A*inv_A, 'The product of A and its inverse is: ');


