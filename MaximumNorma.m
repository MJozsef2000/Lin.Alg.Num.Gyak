function result  = MaximumNorma(v)
%Kisz�molja egy vektor maximum norm�j�t
%FIGYELEM! Ez a program egy r�szprogramja a Norm�k f�programnak.
%K�l�n is lehet haszn�lni, az argumentumba adjunk meg egy vektort!
%(Ezt a Norm�k f�program elv�gzi helyett�nk, ez�rt is aj�nlatos abb�l a HUB-b�l h�vni!)
%-by Poc�
max = abs(v(1));
for i=2:length(v)
    if max < abs(v(i))
        max = abs(v(i));
    end
end
result = max;