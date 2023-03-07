% type - Eloszlás típusa
% p_a  - Pattern amount (minta száma)
% x_a  - Random szám mennyisége

function runnable(type, p_a, x_a, seed = "default")
  rng(seed);
  clf;
  hold on;
  grid on;
  p = zeros(0);
  X = zeros(0);
  y = zeros(0);
  switch type
    case "normal"
      normal(p_a, x_a);
    case "exp"
      exp(p_a, x_a);
    case "poiss"
      poiss(p_a, x_a);
    case "bino"
      binomial(p_a, x_a);
  endswitch
endfunction

function normal(p_a, x_a)
  f = zeros(0);
  p = normrnd(0,1,1,p_a); %Random pattern
  X = normrnd(0,1,1,x_a); %Random x
  p = sort(p);
  y = normcdf(p, mean(p), std(p));
  plot(p,y); %Theoretical cdf
    for i=1:1:size(X,2)
      f(end+1) = F(p,X(i));
    endfor
  f = sort(f);
  ecdf(p); %1*10^7
  title(sprintf('Samples used = %d', x_a));
  stairs(sort(X),f); %Custom
  legend('Theoretical CDF','Empirical CDF','Custom Empirical CDF','Location','southeast')
endfunction

function exp(p_a, x_a)
  f = zeros(0);
  p = exprnd(7,1,p_a);
  X = exprnd(7,1,x_a);
  p = sort(p);
  y = expcdf(p, mean(p));
  plot(p,y); %Theoretical cdf
  for i=1:1:size(X,2)
    f(end+1) = F(p,X(i));
  endfor
  f = sort(f);
  ecdf(p);
  title(sprintf('Samples used = %d', x_a));
  stairs(sort(X),f); %Custom
  legend('Theoretical CDF','Empirical CDF','Custom Empirical CDF','Location','southeast')
endfunction

function poiss(p_a, x_a)
  f = zeros(0);
  p = poissrnd(3.5,1,p_a);
  X = poissrnd(3.5,1,x_a);
  p = sort(p);
  y = poisscdf(p, 3.5);
  plot(p,y); %Theoretical cdf
  for i=1:1:size(X,2)
    f(end+1) = F(p,X(i));
  endfor
  f = sort(f);
  ecdf(p);
  title(sprintf('Samples used = %d', x_a));
  stairs(sort(X),f); %Custom
  legend('Theoretical CDF','Empirical CDF','Custom Empirical CDF','Location','southeast')
endfunction

function binomial(p_a, x_a)
  f = zeros(0);
  p = binornd(p_a,0.7,1,p_a);
  X = binornd(p_a,0.7,1,x_a);
  p = sort(p);
  y = binocdf(p, p_a, 0.7);
  plot(p,y); %Theoretical cdf
  for i=1:1:size(X,2)
    f(end+1) = F(p,X(i));
  endfor
  f = sort(f);
  ecdf(p);
  title(sprintf('Samples used = %d', x_a));
  stairs(sort(X),f); %Custom
  legend('Theoretical CDF','Empirical CDF','Custom Empirical CDF','Location','southeast')
endfunction
