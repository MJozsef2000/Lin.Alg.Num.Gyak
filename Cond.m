function result = Cond(A) %A = M�trix
%Egz kond\ci= sy'mol= program, amely az oszlop �sszeg norma (OON) f�ggv�nyt
%haszn�lja
%-by Poc�
result = OON(A) * OON(inv(A));
