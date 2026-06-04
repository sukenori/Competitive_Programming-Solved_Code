include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N,M=int.input
  A=Seq[N:int.input].sorted
  B=Seq[M:int.input].sorted
var
  j=0
  a=0
for i in 0..<N:
  if j<M and A[i]*2>=B[j]:
    j+=1
    a+=1
echo a