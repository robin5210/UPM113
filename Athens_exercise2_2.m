function [Risk] = Athens_exercise2_2(P1, P0, Pd, Pf, C)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

    Risk = P0 * C(1,1) * (1-Pf)   +   P0 * C(2,1) * Pf   +   P1 * C(1,2) * (1-Pd)   +   P1 * C(2,2) * Pd;
end

