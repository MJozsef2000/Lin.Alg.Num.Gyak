m = input('Adja meg az m-et!\n');
k = input('Adja meg a k-t!\n');
A = rand(m,k);
n = input('Adja meg az n-t!\n');
B = rand(k,n);
C = zeros(m,n);
A
B
for i = 1:m
    for j = 1:n
        for t = 1:k
            C(i,j) = C(i,j) + A(i,t) * B(t,j);
        end
    end
end
C