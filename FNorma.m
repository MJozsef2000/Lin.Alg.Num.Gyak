% Frobenius-norma - By Pocó
M = input('Kérem adja meg a mátrixot!\n');
sum = 0;
for i = 1 : size(M,1)
    for j = 1 : size(M,2)
        sum = sum + abs(M(i,j))^2;
    end
end
fprintf('A Frobenius-norma értéke: %d', sqrt(sum));
