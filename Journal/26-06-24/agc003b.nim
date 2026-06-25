include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N=int.input
var A=Seq[N:int.input]
var a=A[0] div 2
A[0]=A[0] mod 2
for i in 1..<N:
  a+=(A[i-1]+A[i]) div 2
  if A[i]>0: A[i]=(A[i-1]+A[i]) mod 2
echo a
