%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%             HANKEL MATRIX Generator 
% function H = hank(s,n)
%   
%   ARGUMENT
%         s --> Data vector
%         n --> Order(number)
%    RETURN
%       Hankel Matrix  
%
%                  [s(0) s(-1) ..... s(1-n)]
%          H(n) =  [s(1)  s(0)  .... s(2-n)]
%                  [....  ....  ....  .... ]
%                  [s(N-1) s(N-2) .. S(N-n)]
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function H = myHank(s,n)
N=length(s)-n;                 % Lenght(s) allows to know the length of data vector s.
H=[fliplr(s(1:n)')];           % Fliplr(x) allows you to reverse the order of the elements of x from left to right.

for i =  2:N                   % We fill the matrix.
    H = [H;fliplr(s(i:i+(n-1))')];
end








