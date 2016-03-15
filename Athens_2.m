%% Exercise 1

d_all = [];

for i = 3:6
   [lambda, d, snr] = Athens_exercise2_1(10 ^ (-1 * i), .9, 6);
   d_all = [d_all; [d]];
   fprintf('%1.4f\t%1.4f\t%1.4f\n', lambda, d, snr)
end


%% Exercise 2

for i = 3:6
    C = [0, 3; 2, 0];
    Risk = Athens_exercise2_2(.2, .8, .9, 10 ^ (-1 * i), C);
    fprintf('%1.4f\n', Risk)
end

%% Exercise 3

for i = 1:numel(d_all)
    C = [0, 3; 2, 0];
    [gamma, Pd, Pf, Risk] = Athens_exercise2_3(d_all(i), P0, P1, C);
    fprintf('%1.4f\t%1.4f\t%1.4f\t%1.4f\n', gamma, Pd, Pf, Risk)
end
