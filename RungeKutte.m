y0 = 1;
int = [1 2];
%A feladat
% y'(x) = -y/x
% y(0) = 1
% A megoldás 1/X
hold on;
grid on;
X = int(1):0.001:int(2);
Y = 1./X;
plot(X,Y);
for h = 0.1 : -0.01 : 0.01
    y0 = 1;
    for x = int(1):h:int(2)
        plot(x,y0,'*');
        pause(0.1);
        K1 = (-y0  /  x);
        K2 = (-(y0+(h*K1/2))  /  x+(h/2));
        K3 = (-(y0+(h*K2/2))   /  x+(h/2));
        K4 = (-(y0+(h*K3))   /   x+h);
        y0 = y0 + (h/6)*(K1 + 2*K2 + 2*K3 + K4);
    end
end
fprintf('DONE\n');