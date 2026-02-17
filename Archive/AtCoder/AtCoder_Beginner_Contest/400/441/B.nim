include "/workspaces/AtCoder-Nim/.Library/Template.nim"
let
  N,M=int.input
  S,T=string.input
loop Q:=int.input:
  let w=string.input
  if w.allIt(it in S) and w.anyIt(it notin T): echo "Takahashi"
  elif w.anyIt(it notin S) and w.allIt(it in T): echo "Aoki"
  else: echo "Unknown"