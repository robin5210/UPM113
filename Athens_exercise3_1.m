function [Pb] = Athens_exercise3_1(SDNR, N)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
    sigma = sqrt(10 ^( -SDNR / 10));
    d = sqrt(N) / sigma;
    Pm = 1 - .5 * erfc((-d) / (2 * sqrt(2)));
    Pf =  .5 * erfc((d) / (2 * sqrt(2)));
    Pb = .5 * Pf + .5 * Pm;
end

