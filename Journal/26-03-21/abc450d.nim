include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N,K=int.input
  A=Seq[N:int.input]
let m=A.mapIt(it mod K).toHashSet.toSeq.sorted
var a=m[^1]-m[0]
for i in 1..<m.len:
  a.chMin(m[i-1]+K-m[i])
echo a