%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                  Hessian COST FUNCTION
%            function [HessJ]= LRCostFuncHessian(Phi,Y,Theta)
% This function allows to calculate the Hessian of Cost Function HessJ(θ).
%
%   ARGUMENT:
%         Phi --> Regressor input matrix 	
%         Y --> Observed input vector
%         Theta --> Parameter vector 
%   
%   RETURN:
%          HessJ --> 
%         [1  u1(1) u2(1) ... ur(1)]
%  Phi =  [1  u1(2) u2(2) ... ur(2)]    Y = [y(1) y(2) ... y(N)]'
%         [.. .:..  .:..  ... .:.. ]    F(θ)= [f(z(1)) f(z(2))...f(z(N))]'
%         [1  u1(N) u2(N) ... ur(N)]
%
%
%         [f(z(1))(1-f(z(1)))       0    ...        .....       0       ]
%  W(θ) = [    0              f(z(2))(1-f(z(2))) 0   ....       0       ]              
%         [    :                    :               :           :       ]                  
%         [    0                    0                  f(z(N))(1-f(z(N))]
%
%        HessJ(θ)=(Phi')*W(θ)*(Phi)     (Matrix form) 
%
% (The elements of W(θ)are in range (0,1),
% therefore the hessian HessJ(θ)=(Phi')*W(θ)*(Phi)
% is positive definite that means that J(θ) has unique minimum)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ HessJ ] = LRCostFuncHessian(Phi,Y,Theta )

z=Phi*Theta;
F_z=Sigmoid(z);
W=diag(F_z.*(1-F_z)); %W(θ) change with every iteration because with every iteration we have now θ
HessJ=Phi'*W*Phi;
end

