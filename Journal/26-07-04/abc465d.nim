include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let T=int.input
loop T:
  var
    X,Y,K=int.input
    a=0
  while X!=Y:
    if X>Y: X=X div K
    else: Y=Y div K
    a+=1
  echo a
