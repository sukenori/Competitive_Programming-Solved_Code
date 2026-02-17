include "/workspaces/AtCoder-Nim/.Library/Template.nim"
include "/workspaces/AtCoder-Nim/.Library/Structure/Implicit_Treap.nim"
let T = int.input
loop T:
  let
    N, W = int.input
    C = Seq[N: int.input]
  var m = Seq[W * 2: int]
  for i in 0 ..< N:
    m[i mod (W * 2)] += C[i]
  var t = (m & m).toList
  echo:
    minOf(i, 0 ..< W * 2):
      t.sum[i ..< i + W]