include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N=int.input
var L,R=Seq[N:int]; (L,R).input
let
  rmin=R.min
  lmax=L.max
  ls=L.sorted
  rs=R.sorted
import atcoder/modint
type mint=modint998244353
if rmin>lmax:
  echo 2.mint.pow(N)
else:
  echo 2.mint.pow(ls.lowerBound(rmin)+1)+2.mint.pow(N-rs.lowerbound(lmax))
  dump 2.mint.pow(ls.lowerBound(rmin)+1)
  dump 2.mint.pow(N-rs.lowerbound(lmax))