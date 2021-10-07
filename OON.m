function max = OON(A)
%Oszlop összeg norma függvény stílusban a Cond() függvényhez 
%- by Pocó
max = 0;
for j = 1 : size(A,2)
    temp = 0;
    for i = 1 : size(A,1)
        temp = temp + abs(A(i,j));
    end
    if max < temp
        max = temp;
    end
end
