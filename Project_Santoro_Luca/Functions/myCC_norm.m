%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&&&&&&&&&&&&&&&&&&&&&
%                  CROSS-CORRELATION
% 
% function [gamma] = myCC_norm(e,u)
% This function allow to find the normalized standard test quantities 
% for the test of cross-correlation.
% We find gamma knowing the residual, the parameter gamma for 
% cross-correlation test is given by the following expression:
%
%                reu(tau)/sqrt(re(0)*ru(0)) 
%
% Where re is the Correlation of only e, ru is the Correlation of only u
% and reu is the cross-corelation between u and e.
%                       
% ARGUMENT
%         e --> Input vector
%         u --> Input vector
%  RETURN
%         gamma vector. 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [gamma] = myCC_norm(e,u) 
reu=xcorr(e,u);                   % We find cross-correlation between residual and input.
re=xcorr(e);                      % We find autocorrelation of the residual.
ru=xcorr(u);                      % We find autocorrelation of the input.
gamma=reu/sqrt(var(re)*var(ru));  % We find the normalized standard quantities.
end