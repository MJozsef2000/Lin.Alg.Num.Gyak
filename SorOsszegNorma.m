M = input('K�rem adja meg a m�trixot!\n');
max = 0;
for i = 1 : size(M,1)
    temp = 0;
    for j = 1 : size(M,2)
        temp = temp + abs(M(i,j));
    end
    if max < temp
        max = temp;
    end
end
fprintf('Ez a sorosszeg norma: %d\n', max);