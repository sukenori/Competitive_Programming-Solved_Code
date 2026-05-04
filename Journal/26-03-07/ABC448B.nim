include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
var
  N,M=int.input
  C=Seq[M:int.input]
  s=C.sum
for _ in 1..N:
  let A,B=int.input
  C[A-1]=max(0,C[A-1]-B)
echo s-C.sum