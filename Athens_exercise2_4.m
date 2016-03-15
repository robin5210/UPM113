function [P0, P1] = Athens_exercise2_4(gamma, d , C)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
    eta = exp((gamma - d/2) * d);
    P1 = (C(2,1) - C(1,1)) / (eta * ( C(1,2) - C(2,2)) + (C(2,1) - C(1,1)));
    P0 = 1 - P1;
end