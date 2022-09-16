%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                  GRADIENT COST FUNCTION
%            function [gradJ]= LRCostFuncGrad(Phi,Y,Theta)
%This function allows to find the gradient of Cost Function.
%
%   ARGUMENT:
%         Phi --> Regressor input matrix 	
%         Y -->  Observed input vector
%         Theta --> Parameter vector 
%   
%   RETURN:
%          gradJ(θ) --> Gradient Cost Functon.
%
%         [1  u1(1) u2(1) ... ur(1)]
%  Phi =  [1  u1(2) u2(2) ... ur(2)]    Y = [y(1) y(2) ... y(N)]'
%         [.. .:..  .:..  ... .:.. ]    F(θ)= [f(z(1)) f(z(2))...f(z(N))]'
%         [1  u1(N) u2(N) ... ur(N)]
%
% gradJ(θ)= Phi'*(F(θ)-Y)   (Matrix form)
% F(θ) change with every iteration because with every iteration we have new θ  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ gradJ ] = LRCostFuncGrad(Phi,Y,Theta )

F = Sigmoid(Phi*Theta);   %We obtain the sigmoind function to compute the gradient 
                          %to calcolate the gradient we applied: J'=phi'*(F-Y) where 
gradJ = Phi'*(F-Y);       %F(θ)is the sigmoid function of Phi*(actual)Theta 
                          %F(θ) change with every iteration because with every iteration we have new θ  
                          
end

