function [gamma, Pd, Pf, Risk] = Athens_core(P0, P1, C, gammaOffset, precomputedGamma)
    % Constants
    k = 1.38064852 * 10^-23;
    Te = 11000; % in K
    Beq = 1*10^6; % in Hz
    N = 6;
    S = 10^-13; % in W
    
    C00 = C(1,1);
    C01 = C(1,2);
    C10 = C(2,1);
    C11 = C(2,2);

    sigma = sqrt(k * Te * Beq);
    m = sqrt(S);
    d = m * sqrt(N) / sigma;

    if precomputedGamma ~= 0
        eta = (P0 * (C10 - C00)) / (P1 * (C01-C11));
        gamma = log(eta) / d + d / 2;
        gamma = gamma + gammaOffset;
    else
        gamma = precomputedGamma
    end
    % We can give lambda any value we want, but if we make it gamma then it is
    % the optimal value.
    lambda = gamma;

    Pd = 1/2 * erfc((lambda - d) / sqrt(2));
    Pf = 1/2 * erfc(lambda / sqrt(2));
    
    % Risk
    Pn = 1 - Pf;
    Pm = 1 - Pd;
    Risk = P0 * C00 * Pn + P0 * C10 * Pf + P1 * C01 * Pm + P1 * C11 * Pd;
end
