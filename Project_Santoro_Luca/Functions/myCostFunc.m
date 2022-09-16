%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&&&&&&&&&&&&&&&&&&&&&
%                   COST FUNCTION 
% function [ J ] = myCostFunc( y,u,theta)
%
% This function allows to find the our Cost Function for a ARX model:
%
%                       J(θ) =||ɛ||^2=||Y-H*θ||^2
% ARGUMENT
%         y --> Input vector
%         u --> Input vector
%         θ --> Input vector
%   RETURN
%      Cost function J(θ).
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ J ] = myCostFunc( y,u,theta)

N=length(y);
n=length(theta)/2;

H=[-myHank(y,n) myHank(u,n)];                          % We build the Hankel matrix through a special function.
J=1/(N-n)*(y(n+1:end)-H*theta)'*(y(n+1:end)-H*theta);  % We use the forumla of the Cost Function for a ARX model,
                                                       % using of the Hankel matrix J(θ) =||ɛ||^2=||Y-H*θ||^2

end

