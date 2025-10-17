let nand (x:bool) (y:bool) : bool = not (x && y);;

let nand (x:bool) (y: bool) : bool =
  if x && y then false else true;;

let nand (x:bool) (y:bool) : bool = match (x, y) with
    (true, true) -> false
  | (_,_) -> true;;
