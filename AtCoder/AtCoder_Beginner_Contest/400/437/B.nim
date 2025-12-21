include "../.Library/template.nim"
let
  H, W, N = int.input
  A = Seq[H, W: int.input]
  B = Seq[N: int.input]
echo (0 ..< H).toSeq.mapIt(A[it].countIt(it in B)).max