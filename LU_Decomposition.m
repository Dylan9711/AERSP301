function [L, U] = LU_Decomposition(A)


%row, column counters for iteration throughout the matrix
[y,x] = size(A);

%initialize to zero matrices to improve runtime execution
gamma = zeros(1,x);
beta = zeros(1,x);
alpha = zeros(1,x);

gamma(1) = A(1,1);

%Initialize 2 matrixes, L as an identity matrix and U as a zero matrix
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

end