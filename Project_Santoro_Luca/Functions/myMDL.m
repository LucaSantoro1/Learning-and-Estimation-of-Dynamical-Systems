%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Minimum Description Length (MDL) criterion
%         
%               function [ MDL ] = myMDL( y, u, theta )
%
% This function allows to implement MDL criterion. MDL leads, in general, 
% to models of lower complexity w.r.t. AIC and FPE
%
%                    MDL = NlogJ(theta) + 2plog(N)
%
% Terms N logJ(theta) decrease as J(theta) decreases. When N approaches infinity, 
% the minimum of MDL will correspond to the true model (Consistency). 
% We shouldn't apply MDL when we have a small number of samples, in that
% case FPE might be better.
%
%  ARGUMENT
%         y --> input vector
%         u --> input vector
%         theta --> inpuct vector
%   RETURN
%        scalar MDL 
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ MDL ] = myMDL( y, u, theta )
N=length(y);
n=length(theta)/2;

J=myCostFunc(y,u,theta);  % We call the function myCostfunc to obtain the loss function to use in the next formula.
MDL=N*log(J)+2*n*log(N);  % we apply the MDL formula shown above.

end

