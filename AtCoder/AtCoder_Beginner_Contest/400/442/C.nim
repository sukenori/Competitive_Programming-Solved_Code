include "/workspaces/AtCoder-Nim/.Library/Template.nim"
include "/workspaces/AtCoder-Nim/.Library/Math/Combinatorics/Enumeration.nim"
let N,M=int.input
var c=Seq[N:N-1]
loop M:
  let A,B=int.input-1
  c[A]-=1; c[B]-=1
echo (0..<N).toSeq.mapIt(combination(c[it],3)).join(" ")