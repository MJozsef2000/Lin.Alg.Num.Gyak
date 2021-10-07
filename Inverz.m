function result  = Inverz(A) %Négyzetes
%Kiszámoljuk egy mátrix inverzét
%A program futásához kötelezõ az általunk írt Det függvény!
%-by Pocó
if size(A,1) ~= size(A,2)
    fprintf('A mátrix nem négyzetes!\n');
    return;
end
if size(A,1) == 1
    result = A^(-1);
    return;
elseif size(A,1) == 2    
    B = A;
    A(1,1) = B(2,2);
    A(2,2) = B(1,1);
    A(1,2) = (-1)*A(1,2);
    A(2,1) = (-1)*A(2,1);
    result = 1/Det(B) * A;
    return;
elseif size(A,1) > 2
    fprintf('3x3 es nagyobb matrixokra meg nem kesz!\n');
    return;
end

