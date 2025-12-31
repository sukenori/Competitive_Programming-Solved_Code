include "/workspaces/AtCoder-Nim/.Library/template.nim"
include "/workspaces/AtCoder-Nim/.Library/Structure/Implicit_Treap.nim"
let N = int.input
var A = newEagerList[int]()
loop N:
  A.addLast(int.input)
  if A.len >= 4 and (2 .. 4).forAllIt(A[^1] == A[^it]):
    loop 4: A.popLast
echo A.len