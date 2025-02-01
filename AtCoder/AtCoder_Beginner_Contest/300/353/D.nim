include atcoder/header
let N=nextInt()
let A=newSeqWith(N,nextInt())
var d=A.mapIt(10^($it).len)
for i in countdown(N-2,0): d[i]+=d[i+1]
import atcoder/modint
type mint=modint998244353
var a=0.mint
for i in 0..<N: a+=A[i]*(d[i+1].mint+i)
echo a