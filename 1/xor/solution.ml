let xor (x:bool) (y:bool) : bool =
  (not (x) && y) || (x && not (y));;

let xor (x:bool) (y:bool) : bool =
  if x == y then false else true;;

let xor x y = match (x, y) with
    (false,false) -> false
  | (true,true) -> false
  | (_,_) -> true;;
