include atcoder/header
let N=nextInt()
let A=newSeqWith(N,nextInt()).sorted
import atcoder/modint
type mint=modint998244353
var Aj,a=0.mint
for Ai in A:
  a+=(Aj+Ai)*Ai
  Aj=Ai+Aj*2
echo a