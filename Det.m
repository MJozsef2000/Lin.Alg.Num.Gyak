function result = Det(A) % Négyzet mátrix
%Determináns kiszámító program
result = 0;
if size(A,1) ~= size(A,2)
    fprintf('A mátrix nem négyzetes!\n');
    return;
end

if size(A,1) == 1 % n=1
    result = A;
    return;
elseif size(A,1) == 2 % n=2
    result = A(1,1)*A(2,2) - A(1,2)*A(2,1);
    return;
elseif size(A,1) > 2 % m=3
    n = size(A,1);
    for i=1:n
        B = A;
        B(i,:) = [];
        B(:,1) = [];
        result = result + ((-1)^(i+1)) * A(i,1) * Det(B);
    end
    return;
end
