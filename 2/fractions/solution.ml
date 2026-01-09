let posfrac (n, d) =
  if d = 0 then false
  else if (n<0 && d<0) then true
  else if (n>0 && d>0) then true
  else false ;;

let compare_posfrac (a,b) (c,d) =
  if posfrac (a,b) && posfrac (c,d) then
    let m1 = a * d in
    let m2 = c * b in
    if m1 > m2 then 1
    else if m1 = m2 then 0
    else -1
  else -1 ;;

assert (compare_posfrac (1,2) (2,4) == 0);;
assert (compare_posfrac (1,2) (1,3) == 1);;
assert (compare_posfrac (1,2) (2,3) == -1);;
