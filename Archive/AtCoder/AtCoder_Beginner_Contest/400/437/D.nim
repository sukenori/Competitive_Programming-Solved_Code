include "/workspaces/AtCoder-Nim/.Library/default_template.nim"
include "/workspaces/AtCoder-Nim/.Library/Others/Cumulative_Sum.nim"
import atcoder/modint
type mint = modint998244353
let
  N, M = int.input
  A = Seq[N: int.input].sorted
  B = Seq[M: int.input]
  c = initCumSum[mint](A)
echo:
  sumOf(i, 0 ..< M):
    let j = A.lowerBound(B[i])
    c[j ..< N] - (N - j) * B[i] + j * B[i] - c[0 ..< j]