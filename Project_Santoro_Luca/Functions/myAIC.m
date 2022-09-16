%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
%              Akaike Information Criterion (AIC) 
%         
%               function [ AIC ] = myAIC( y ,u, theta )
%
% This function allows to implement AIC criterion 
% ( criterion with complexity terms).
%
%                  AIC = N*logJ(theta) +2p
%
%
%  ARGUMENT
%         y --> Input vector
%         u --> Input vector
%         theta --> Input vector
%   RETURN
%        scalar AIC
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ AIC ] = myAIC( y ,u, theta )

N=length(y);
n=length(theta)/2;         % Our p

J=myCostFunc(y,u,theta); % We find the C ost function

AIC=N*log(J)+2*n;        % We apply the AIC criterion (through the 
                         % formula shown above) on the cost function obtained

end

