%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                         RECURSIVE LEAST SQUARES ALGORITHM
% function [theta]=myRLS_III(y,u,n)
% Function that allows to implement version III of the recursive least squares algorithm (RLS).
% In this way we avoid the use of matrix inversion.
%   ARGUMENT
%         y --> Input vector 	
%         u --> Input vector
%         n --> Model order
%    RETURN
%         theta vector, that is the estimate.    
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [theta]=myRLS_III(y,u,n)

% As fist step, we initialize the parameters:
N=length(y)- n;                                                                                    

theta_0=zeros(2*n,1);                                       % theta_0 represent the initial theta (a vector of zeros of dimension 2*model order)
R=eye(2*n)*1;
alpha=10000;                                                % It is the Confidence of the estimate, high value since we have no confidence in our estimate, 
                                                            % so we chose an high correction.
phi_1=myPhi(y,u,n,n+1);
                                                              
p_1=R*alpha;                                                % We initialize the gain K(t), where alpha is the confidence of the estimate, p_1 correspond to p(t-1).
theta_1= theta_0 + p_1*(phi_1*(y(n+1)- phi_1'*theta_0));    % theta(1)=theta(0)+K(initial)*epsilon, this is theta at instant (t-1).
                         
p_p=p_1;           % p(t-1) 
theta_p=theta_1;   % theta(t-1)

% The following is the central part of the recursive algorithm where theta
% is updated at each instant:

for i=2:N                                                                                          
    CurrentPhi=myPhi(y,u,n,n+i);
    p_t=i*p_p/(i-1)- i*(p_p*(CurrentPhi*CurrentPhi')*p_p)/((i-1)*(i-1+CurrentPhi'*p_p*CurrentPhi)); % P(t)=t/(t-1)*P(t-1)-t/t-1*(P(t-1)phi*phi'*P(t-1))/(t-1+phi'*P(t-1)*phi)
    theta_t=theta_p + p_t*(CurrentPhi/i*(y(n+i)-CurrentPhi'*theta_p));                              % We update theta.
    theta_p=theta_t;                                                                                % The value just found become the previous value for the next iteration.
    p_p=p_t;
end
theta=theta_t;                                                                                      % Final estimation of theta. 
end