let rec minmaxfun f a b =
  if a > b then None
  else if a = b then Some (f a, f a)
  else 
    match minmaxfun f (a+1) b with
    | None -> None
    | Some (n,m) ->
        let min = if f a < n then f a else n
        and max = if f a > m then f a else m
        in Some(min, max) ;;

assert (minmaxfun (fun x -> x) (-2) 5 = Some (-2,5));;
assert (minmaxfun (fun x -> x) 5 (-2) = None);;
assert (minmaxfun (fun x -> x) 5 5 = Some (5,5));;
assert (minmaxfun (fun x -> x * x) (-2) 5 = Some (0,25));;

let curve x = x |> Float.of_int |> fun x -> x ** 3.0 -. 3.0 *. x;;
let arccos x = x |> Float.of_int |> Float.acos;;

assert (minmaxfun curve (-2) 2 = Some (-2.0,2.0));;
assert (minmaxfun arccos (-1) 1 = Some (0., Float.pi));;
