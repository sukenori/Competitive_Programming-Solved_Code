include "../.Library/template.nim"
let
  N, M = int.input
  A = Seq[N: int.input].sorted
  B = Seq[M: int.input]
  cA = (@[0] & A).cumsummed
  r = A.mapIt(998244353 - it).sorted
  cr = (@[0] & r).cumsummed
import atcoder/modint
type mint = modint998244353
var a = 0.mint
for i in 0 ..< M:
  var j = A.lowerBound(B[i])
  a += B[i] * j - cA[j]
  var rj = r.lowerBound(998244353 - B[i])
  a += (998244353 - B[i]) * rj - cr[rj]
echo a