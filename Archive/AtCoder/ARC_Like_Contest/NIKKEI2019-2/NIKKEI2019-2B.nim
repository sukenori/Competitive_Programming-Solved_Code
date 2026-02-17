include atcoder/header
let
  N=nextInt()
  D=newSeqWith(N,nextInt())
var c=newSeq[int](D.max+1)
for Di in D: c[Di]+=1
import atcoder/modint
type mint=modint998244353
var a:mint
if D[0]==0 and c[0]==1: a=1
for i in 1..<c.len: a*=c[i-1].pow(c[i])
echo a