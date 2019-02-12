%Create LU Decompostion using Cholesky's Algorithm

%Size of matrix
n = 5;

%Create a Symmetric Matrix
%(https://www.mathworks.com/matlabcentral/answers/123643-how-to-create-a-symmetric-random-matrix#answer_131349)
d = 10*rand(n,1); % The diagonal values
d = floor(d);
t = triu(bsxfun(@min,d,d.').*rand(n),1); % The upper trianglar random values
t = floor(t);
A = diag(d)+t+t.'; % Put them together in a symmetric matrix

%Create L
L = zeros(n, n);

%Method 1: Figure out L(1, 1)
L(1, 1) = sqrt(A(1, 1));

%Method 2: Figure out L(val, 1)
L(2:n, 1) = A(2:n, 1) / L(1, 1);
