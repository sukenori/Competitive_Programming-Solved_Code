include "/workspaces/AtCoder-Nim/.Library/Template.nim"
include "/workspaces/AtCoder-Nim/.Library/DP/LIS.nim"
let N = int.input
var m: seq[(int, int)]
loop N:
  let A, B = int.input
  m.add((A, B))
echo m.sortedByIt((it[0], -it[1])).mapIt(it[1]).lisLen