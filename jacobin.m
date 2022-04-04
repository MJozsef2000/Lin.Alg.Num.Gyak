function result = jacobin(A,b,X,epsilon)
    G = -inv(diag(diag(A))) * (tril(A,-1) + triu(A,1));
    sonG = SON(G);
    k = inv(diag(diag(A)))*b;
    i = 1;  
    if sonG < 1
        fprintf("Hibakorlát értéke: %f\n", epsilon);
        h = 2*epsilon;
        while h>epsilon
            Y = (G*X)+k;
            h = (sonG/(1-sonG)) * SON(Y-X);
            fprintf("%d. lépés hiba: %f\n",i,h);
            i = i + 1;
            X = Y;
        end
        result = X;
    else
        result = "hiba!";
    end
