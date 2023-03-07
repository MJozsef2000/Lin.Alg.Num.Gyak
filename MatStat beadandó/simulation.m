function simulation (type,nr_of_sim)
  if nr_of_sim < 1
    nr_of_sim = 1
  endif
  if nr_of_sim > 1023
    nr_of_sim = 1023
  endif
  for(i=1:nr_of_sim)
    runnable(type,1000,2^i);
    drawnow;
    pause(1.5);
  endfor
endfunction
