function result = Cond(A) %A = Mátrix
%Egz kond\ci= sy'mol= program, amely az oszlop összeg norma (OON) függvényt
%használja
%-by Pocó
result = OON(A) * OON(inv(A));
