%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        WHITENESS TEST
% 
%            function [gamma] = MyWhitenessGamma(e)
%
% This function allow to find the normalized standard test quantities 
% for the whiteness test.
% (The whiteness test can be of help in model order estimation, 
% together with FPE, AIC, MDL, F-test).                 
%
%
%  ARGUMENT
%         e --> Input vector
%   
%   RETURN
%         gamma vector
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function [gamma] = MyWhitenessGamma(e) 

r=xcorr(e);              % We find the autocorrelation of the residual.

gamma=r/(var(r));        % We find normalized test quantities through 
                         % the relationship shown in the live script.
end