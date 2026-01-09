type winner = Player | Computer | Tie ;;

let win (hp,gp) =
  let hc = Random.int 6 in
  let gc = Random.int 11 in
  if gp = gc then ((hc, gc), Tie)
  else if gp = hp + hc then ((hc, gc), Player)
  else if gc = hp + hc then ((hc, gc), Computer)
  else ((hc, gc), Tie) ;;

win(2,5);; 
win(2,5);; 
win(2,5);; 
