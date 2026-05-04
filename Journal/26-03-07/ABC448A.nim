include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
var
  N,X=int.input
  A=Seq[N:int.input]
for Ai in A:
  if Ai<X:
    X=Ai
    echo 1
  else: echo 0
