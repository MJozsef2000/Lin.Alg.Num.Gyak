%Az alábbi program egy felhasználó által megadott mátrix sarkait
%bõvíti ki "0-ból készült sarkokkal".
%-by Pocó
i = input('Adja meg a mátrix 1. dimenzióját!\n');
j = input('Adja meg a mátrix 2. dimenzióját!\n');
fprintf('Generált mátrix az adatok alapján:\n');
m = rand(i,j)
for x = 1:i
    for y = 1:j
        if x == 1 && y > j-2
            m(x,y) = 0;
        elseif x == 2 && y > j-1
            m(x,y) = 0;
        elseif x > i-2 && y == 1
            m(x,y) = 0;
        elseif x > i-1 && y == 2
            m(x,y) = 0;
        end
    end
end
m