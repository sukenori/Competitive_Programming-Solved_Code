include "/workspaces/AtCoder-Nim/.Library/default_template.nim"
include "/workspaces/AtCoder-Nim/.Library/Structure/Implicit_Treap.nim"
let T = int.input
loop T:
  let N = int.input
  var
    s = 0
    d = initMultiSet[int]()
  loop N:
    var W, P = int.input
    s += P; d.incl(W + P)
  while s - d.peekFirst >= 0: s -= d.popFirst
  echo N - d.len