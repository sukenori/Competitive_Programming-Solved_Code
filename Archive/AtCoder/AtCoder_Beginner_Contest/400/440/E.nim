include "/workspaces/AtCoder-Nim/.Library/Template.nim"
let
  N, K, X = int.input
  A = Seq[N: int.input]
  m = A.max
  r = A.mapIt(m - it).sortedWithIdx
var h: HeapQueue[int]
