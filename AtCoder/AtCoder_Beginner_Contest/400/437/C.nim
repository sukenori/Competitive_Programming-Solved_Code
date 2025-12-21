include "../.Library/template.nim"
let T = int.input
loop(T):
  let N = int.input
  var
    s = 0
    d = Seq[N: int]
  for i in 0 ..< N:
    var W, P = int.input
    s += P; d[i] = W + P
  d.sort
  i := 0; while s - d[i] >= 0: s -= d[i]; i += 1
  echo i