function result = OsszegNorma(v)
%Kisz�molja egy vektor �sszegnorm�lj�t
%FIGYELEM! Ez a program egy r�szprogramja a Norm�k f�programnak.
%K�l�n is lehet haszn�lni, az argumentumba adjunk meg egy vektort!
%(Ezt a Norm�k f�program elv�gzi helyett�nk, ez�rt is aj�nlatos abb�l a HUB-b�l h�vni!)
%-by Poc�
result = 0;
for i=1:length(v)
    result = result + abs(v(i));
end