let consensus3 (f0, f1, f2) = fun n -> 
  let v0 = f0 n in
  let v1 = f1 n in
  let v2 = f2 n in
  if v0 = v1 || v0 = v2 then Some v0
  else if v1 = v2 then Some v1
  else None ;;

assert (consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 1 = Some 5);;
assert (consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 2 = Some 2);;
assert (consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 3 = None);;
assert (
  try
    consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 0
    |> ignore; false
  with _ -> true);;
  
