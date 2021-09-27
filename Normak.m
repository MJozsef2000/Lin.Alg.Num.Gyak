%Az alábbi program egy fõ "hub" a 3 eddig tanult normák képzésére
%Összegnorma, Euklidészinorma, és MaximumNorma
%-by Pocó
fprintf('Adja meg hány elemû vektort szeretne!\n');
v = rand(1,input(''))
fprintf('Adja meg milyen normát szeretene számolni!\n 1 - Összegnorma\n 2 - Euklidészi norma\n 3 - maximum norma\n');
choice = input('');
switch (choice)
    case 1 
        disp(OsszegNorma(v));
    case 2 
        disp(EuklidesziNorma(v));
    case 3 
        disp(MaximumNorma(v));
    otherwise
        fprintf('Nem kaptam megfelelõ adatot!\n');
end
        