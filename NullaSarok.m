%Az al�bbi program egy felhaszn�l� �ltal megadott m�trix sarkait
%b�v�ti ki "0-b�l k�sz�lt sarkokkal".
%-by Poc�
i = input('Adja meg a m�trix 1. dimenzi�j�t!\n');
j = input('Adja meg a m�trix 2. dimenzi�j�t!\n');
fprintf('Gener�lt m�trix az adatok alapj�n:\n');
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