%Az al�bbi program egy f� "hub" a 3 eddig tanult norm�k k�pz�s�re
%�sszegnorma, Euklid�szinorma, �s MaximumNorma
%-by Poc�
fprintf('Adja meg h�ny elem� vektort szeretne!\n');
v = rand(1,input(''))
fprintf('Adja meg milyen norm�t szeretene sz�molni!\n 1 - �sszegnorma\n 2 - Euklid�szi norma\n 3 - maximum norma\n');
choice = input('');
switch (choice)
    case 1 
        disp(OsszegNorma(v));
    case 2 
        disp(EuklidesziNorma(v));
    case 3 
        disp(MaximumNorma(v));
    otherwise
        fprintf('Nem kaptam megfelel� adatot!\n');
end
        