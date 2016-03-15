P0 = 0.4;
P1 = 0.6;
precomputedGammas = [1.4873, 1.6913, 2.0400]; 

for i = 3 : -1 : 1
    C = [0, i; 2, 0];
    [gamma, Pd, Pf, Risk] = Athens_core(P0, P1, C, 0, precomputedGammas(i));
    disp(sprintf(repmat('%1.4f\t', 1, 4), gamma, Pd, Pf, Risk));
end
