function max = OON(A)
%Oszlop �sszeg norma f�ggv�ny st�lusban a Cond() f�ggv�nyhez
%- by Poc�
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