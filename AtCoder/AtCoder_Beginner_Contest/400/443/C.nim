include "/workspaces/AtCoder-Nim/.Library/Template.nim"
let
  N,T=int.input
  A=Seq[N:int.input]
var
  n=0
  a=0
for i in 0..<N:
  if n<A[i]:
    a+=A[i]-n
    n=A[i]+100
if n<T: a+=T-n
echo a