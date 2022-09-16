%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%             SIGMOID FUNCTION 
% function g = Sigmoid(z)
%   
%   ARGUMENT
%         z --> Data vector
%   RETURN
%         g --> Sigmoid function
%
%       g(z)=(e^z)/(1+e^z)=1/(1+e^(-z))
%
% g(0)=0.5; g(+100)=1;
% A sigmoid function is a mathematical function having a 
% characteristic "S" shaped curve or sigmoid curve.
%           
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function g = Sigmoid(z)
g=exp(z)./(1+exp(z)); 
end
