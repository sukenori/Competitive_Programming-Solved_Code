include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N,M=int.input
var c=Seq[2,M:0]
for i in 0..<N:
  let A,B=int.input-1
  c[0][A]+=1
  c[1][B]+=1
for i in 0..<M:
  echo c[1][i]-c[0][i]