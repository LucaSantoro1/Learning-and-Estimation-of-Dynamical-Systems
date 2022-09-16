%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        ANDERSON TEST
% 
%         function [response] = MyAnderson_test(alpha,gamma,N)
%
% This function allow to implement the Anderson test. We use this test to
% make the final decision and then figure out which hypothesis is correct.                 
%                
%                  m_bar/m <= 0.05 ==> accept H0
%                  m_bar/m > 0.05  ==> accept H1 
%
% Where m_bar is the number of failed tests and m is the number of all
% Gaussian test possible.
%  ARGUMENT
%         alpha --> Scalar input (0.05)
%         gamma --> Input vector
%             N --> Scalar input
%   RETURN
%       Response ==> the function can return two possible values:
%
%          HO accepted: if the first hypothesis has been accepted.
%          H1 accepted: if the second hypothesis has been accepted.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [response] = MyAnderson_test(alpha,gamma,N)

% As first step we calculate lambda and then apply the normal function 
% inverse to obtain the number to do the Andreson check.

lambda=1-alpha/2;   % Since we are considering the normalized test quantities we can solve the problem as a Gaussian test.
z=norminv(lambda);  % norminv matlab function allows to define the number z that we can find in the table of standard normal probabilities.

% Considering the Gaussian test we should compute m different gaussian
% tests, so to avoid this is better to consider the Anderson test.

fail_test=gamma(gamma>(z/sqrt(N)));
m_bar=size(fail_test,1); % It is used to understand how many test were failed
m =size(gamma,1);        % It represent all Gaussian test possible.

if (m_bar/m)<=alpha      % We compare the number of failed tests with the number of total tests. 
                         % If the comparison value is lower than alpha=0.05 (first type error) we accept first hypotesis.
    response='H0 accepted';
else                     % If the comparison value is higher than alpha=0.05 we accept the second hypothesis.
    response='H1 accepted';
end

end
