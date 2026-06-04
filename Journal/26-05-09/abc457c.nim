include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N=int.input
var
  K=int.input-1
  A=Seq[N:seq[int]]
  L=Seq[N:int]
for i in 0..<N:
  L[i]=int.input
  for j in 0..<L[i]:
    A[i].add(int.input)
let C=Seq[N:int.input]
var i=0
while K-L[i]*C[i]>=0:
  K-=L[i]*C[i]
  i+=1
echo A[i][K mod L[i]]