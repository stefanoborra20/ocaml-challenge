let is_even x = 
  if x mod 2 = 0 then true else false;;

let is_in_range x = x >= 1 && x <= 5;;

let win a b = match (a,b) with
    (a, b) when not (is_in_range a) && not (is_in_range b) -> 0
  | (a, b) when not (is_in_range b) -> 1
  | (a, b) when not (is_in_range a) -> -1
  | (a, b) -> if is_even(a+b) then 1 else -1
;; 


