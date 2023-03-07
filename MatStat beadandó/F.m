% p = Pattern (rendezett minta)
% x = Input (vizsgálandó elem)
function ret = F(p,x)
  if x <= p(1)
    ret = 0;
    return
  endif
  if x > p(end)
    ret = 1;
    return
  endif
  for i=1:1:size(p,2)-1
    if (x >= p(i) && x <= p(i+1))
      ret = i/size(p,2);
      return
    endif
  endfor
endfunction
