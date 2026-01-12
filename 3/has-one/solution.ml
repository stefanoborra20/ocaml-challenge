let has_one n = 
  if n < 0 then failwith "Error"
  else 
    let rec aux x =
      if x = 0 then false
      else (x mod 10 = 1) || aux (x/10)
    in
    aux n;;

assert(has_one 10 = true);;
assert(has_one 220 = false);;
assert(has_one 911 = true);;
assert(has_one 451 = true);;
assert(try has_one (-1) |> fun _ -> false with _ -> true);;

  
