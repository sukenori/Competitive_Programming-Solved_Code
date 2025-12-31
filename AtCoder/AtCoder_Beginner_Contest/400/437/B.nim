include "/workspaces/AtCoder-Nim/.Library/default_template.nim"
let
  H, W, N = int.input
  A = Seq[H, W: int.input]
  B = Seq[N: int.input]
echo:
  maxOf(i, 0 ..< H):
    A[i].countIt(it in B)