let (=?) (b1: bool -> bool) (b2: bool -> bool) =
  if (b1 true = b2 true) &&
     (b1 false = b2 false)
  then true
  else false ;;

assert ((fun b -> true) =? (fun b -> true));;
assert ((fun b -> b) =? (fun b -> true) = false);;
assert ((fun b -> false) =? (fun b -> true) = false);;
assert (not =? (fun b -> not (not b)) = false);;
assert ((fun b -> b) =? (fun b -> not (not b)));;
