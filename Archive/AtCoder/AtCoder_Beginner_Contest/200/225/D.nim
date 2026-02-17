import macros; macro Template(s: static[string]): untyped = parseStmt(staticExec("echo "&s&"|base64 -d|xzcat"))
Template "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"
let N, Q = int.input
var b, n = Seq[N+1: int]
loop Q:
  let q = int.input
  if q == 1:
    let x, y = int.input
    b[y] = x; n[x] = y
  elif q == 2:
    let x, y = int.input
    b[y] = 0; n[x] = 0
  else:
    let x = int.input
    var a = [x].toDeque
    while b[a.peekFirst] > 0: a.addFirst(b[a.peekFirst])
    while n[a.peekLast] > 0: a.addLast(n[a.peekLast])
    echo a.len, " ", a.toSeq.join(" ")