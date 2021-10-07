function Gauss3(A)
fprintf('Az egyenlet:\n');
for i=1:3
    fprintf('%dx %dy %dz = %d\n', A(i,1), A(i,2), A(i,3), A(i,4));
end
i = 1;
for x=1:2
step = 1;
while step < 4-x
    e = A(i+step,i) / A(i,i);
        for o=1:4
            if A(i+step,o) > 0 && A(i,o)*e > 0 || A(i+step,o) < 0 && A(i,o)*e < 0
                A(i+step,o) = A(i+step,o) - A(i,o)*e;
            else
                A(i+step,o) = A(i+step,o) - A(i,o)*e;
            end
        end
    step = step+1;
    disp(A);
end
i = i+1;
end

fprintf('Az egyenlet:\n');
for i=1:3
    fprintf('%.2fx %.2fy %.2fdz = %.2f\n', A(i,1), A(i,2), A(i,3), A(i,4));
end
end

