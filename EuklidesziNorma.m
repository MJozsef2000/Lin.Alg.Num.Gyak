function result = EuklidesziNorma(v)
%Kisz�molja egy vektor euklid�szi norm�j�t
%FIGYELEM! Ez a program egy r�szprogramja a Norm�k f�programnak.
%K�l�n is lehet haszn�lni, az argumentumba adjunk meg egy vektort!
%(Ezt a Norm�k f�program elv�gzi helyett�nk, ez�rt is aj�nlatos abb�l a HUB-b�l h�vni!)
%-by Poc�
p = input('K�rem adja meg a kitev�t (p)!\n');
result = 0;
for i=1:length(v)
    result = result + v(i)^p;
end
result = result^(1/p);
