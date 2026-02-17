include atcoder/header
import atcoder/modint
type mint=modint1000000007
let
  N=nextInt()
  K=nextInt().mint
  A=newSeqWith(N,nextInt())
import atcoder/fenwicktree
var
  fa,f=initFenwickTree[int](2001)
  a:mint  
for Ai in A: fa.add(Ai,1)
for Ai in A:
  f.add(Ai,1)
  a+=fa[Ai+1..^1].mint*K*(K-1)/2+f[Ai+1..^1].mint*K
echo a