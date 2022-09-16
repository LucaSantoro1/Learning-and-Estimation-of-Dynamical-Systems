%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                  COST FUNCTION
%            function [J]= LRCostFunc(Phi,Y,Theta)
%This function allows to build the Cost Function and find his actual
%value with data given for input at each iteration of the algorithm. 
%It extracts every row of matrix phi and find the rispective J
%(Summed to other previous J in a recursive way)
%
%   ARGUMENT:
%         Phi --> Regressor input matrix 	
%         Y --> Observed input vector
%         Theta --> Parameter vector 
%   
%   RETURN:
%          J(θ) --> Total Cost Functiom   
%
%         [1  u1(1) u2(1) ... ur(1)]
%  Phi =  [1  u1(2) u2(2) ... ur(2)]    Y = [y(1) y(2) ... y(N)]'
%         [.. .:..  .:..  ... .:.. ]    F(θ)= [f(z(1)) f(z(2))...f(z(N))]'
%         [1  u1(N) u2(N) ... ur(N)]
%
% Log-likelihood function:
%        
%      logP(Y|θ)= ∑(t=1->N)[y(t)log(f(z(t)))+(1-y(t))log(1-f(z(t)))];
%           J(θ)= -logP(Y|θ)
% Where f(z(t)) is the sigmoid function.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ J ] = LRCostFunc(Phi,Y,Theta )
N=length(Y);
J=0;
for i=1:N
    phi=Phi(i,:);
    z=phi*Theta;
    J=J+Y(i)*log(Sigmoid(z))+(1-Y(i))*log(1-Sigmoid(z));
end
end

