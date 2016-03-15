p0 = 0.8;
p1 = 0.2;

gammaOffset = -2;
for i = 3 : -1 : 1
    C = [0, i; 2, 0];
    [gamma, Pd, Pf, Risk] = Athens_core(p0, p1, C, gammaOffset, 0);
    disp(sprintf(repmat('%1.4f\t', 1, 4), gamma, Pd, Pf, Risk));
end
disp(sprintf('\n'));

gammaOffset = -1;
for i = 3 : -1 : 1
    C = [0, i; 2, 0];
    [gamma, Pd, Pf, Risk] = Athens_core(p0, p1, C, gammaOffset, 0);
    disp(sprintf(repmat('%1.4f\t', 1, 4), gamma, Pd, Pf, Risk));
end
disp(sprintf('\n'));

gammaOffset = +1;
for i = 3 : -1 : 1
    C = [0, i; 2, 0];
    [gamma, Pd, Pf, Risk] = Athens_core(p0, p1, C, gammaOffset, 0);
    disp(sprintf(repmat('%1.4f\t', 1, 4), gamma, Pd, Pf, Risk));
end
disp(sprintf('\n'));

gammaOffset = +2;
for i = 3 : -1 : 1
    C = [0, i; 2, 0];
    [gamma, Pd, Pf, Risk] = Athens_core(p0, p1, C, gammaOffset, 0);
    disp(sprintf(repmat('%1.4f\t', 1, 4), gamma, Pd, Pf, Risk));
end
