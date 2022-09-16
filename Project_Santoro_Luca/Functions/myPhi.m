%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                   PHI VECTOR
% 
% function phi=myPhi(y,u,n,k) 
% This function allows to build the phi vector, it is used in the 
% code of the Recursive Least Squares function.
%
%   ARGUMENT:
%         y --> Input vector
%         u --> Input vector
%         n --> Model order 
%         K --> Input scalar number
%   
%   RETURN:
%          Phi vector.    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function phi=myPhi(y,u,n,k)
phi_y=[-y(k-n)];
phi_u=[u(k-n)];
for j=k-n+1:k-1
    phi_y=[-y(j) phi_y];
    phi_u=[u(j) phi_u];
end
phi=[phi_y phi_u]';
end
