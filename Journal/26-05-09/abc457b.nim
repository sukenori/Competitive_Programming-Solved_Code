include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N=int.input
var A=Seq[N:seq[int]]
for i in 0..<N:
  let L=int.input
  for j in 0..<L:
    A[i].add(int.input)
let X,Y=int.input-1
echo A[X][Y]