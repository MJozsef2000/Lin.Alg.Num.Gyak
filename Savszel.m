%Az alábbi program egy sávmátrixot állít elõ
%-by Pocó

i = input('Adja meg a matrix dimenziojat:\n');
p = input('Adja meg az also savszalesseget:\n');
q = input('Adja meg a felso savszelesseget\n');
M = rand(i,i);
for x=1:i
    for y=1:i
        if x > y + p | x + q < y
            M(x,y) = 0;
        end
        end
end
M