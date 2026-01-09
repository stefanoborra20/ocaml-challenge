let dice p = 
  let rand = Random.int 101 in
  if rand < p then 6
  else (Random.int 5) + 1 ;;

dice 80 ;;
dice 1 ;;
dice 30 ;;
