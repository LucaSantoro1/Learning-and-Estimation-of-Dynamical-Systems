%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
%              Final Prediction Error (FPE) criterion
%         
%               function [ FPE ] = myFPE( y , u, theta )
%
% This function allows to implement FPE criterion 
% ( criterion with complexity terms).
%
%                    FPE = ((N+p)/(N-p))*J(theta) = J + ((2*p)/N)*J
%
% We aspect that our function FPE will be minimum for the right order of our system.
% In the second formulation of FPE we see the term that penalized big order. 
% J always decreases, but term 2p/N increases as order increases. 
% So we will have something like a balance.
%
%  ARGUMENT
%         y --> Input vector
%         u --> Input vector
%         theta --> Input vector
%   RETURN
%        scalar FPE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ FPE ] = myFPE( y , u, theta )

N=length(y);
n=length(theta)/2;           % our p

J=myCostFunc(y,u,theta);   % We obtain the cost function.

FPE=((N+n)/(N-n))*J;       % We apply the FPE formula shown above.

end

