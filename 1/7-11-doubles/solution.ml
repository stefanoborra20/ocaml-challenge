let seven_eleven_doubles : bool * int * int = 
  let d1 = Random.int(6) + 1 in
  let d2 = Random.int(6) + 1 in
  let sum = d1 + d2 in
  if sum = 7 || sum = 11 || d1=d2 then (true, d1, d2) else (false, d1, d2);;
