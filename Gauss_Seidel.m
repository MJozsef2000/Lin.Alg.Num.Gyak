function result = Gauss_Seidel(A,b,X,epsilon)
    G = -inv((tril(A,-1)+diag(diag(A))))*triu(A,1);
    sonG = SON(G);
    k = inv(tril(A,-1)+diag(diag(A)))*b;
    i = 1;  
    if sonG < 1
        fprintf("Hibakorl�t �rt�ke: %f\n", epsilon);
        h = 2*epsilon;
        while h>epsilon
            Y = (G*X)+k;
            h = (sonG/(1-sonG)) * SON(Y-X);
            fprintf("%d. l�p�s hiba: %f\n",i,h);
            i = i + 1;
            X = Y;
        end
        result = X;
    else
        result = "hiba!";
    end
