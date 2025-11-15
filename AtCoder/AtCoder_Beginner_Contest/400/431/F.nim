include atcoder/header
let
  N,D=nextInt()
  A=newSeqWith(N,nextInt()).toCountTable
  k=A.keys.toSeq.sorted
import atcoder/modint
type mint=modint998244353
var
  l=0
  s=0
  a=1.mint
var fac,ifac=newSeq[mint](N+1)
fac[0]=1.mint; for i in 1..N: fac[i]=fac[i-1]*i
ifac[N]=fac[N].inv; for i in countdown(N-1,0): ifac[i]=ifac[i+1]*(i+1)
proc c(n,r:int):mint =
  fac[n]*ifac[r]*ifac[n-r]
for r in 0..<k.len:
  while k[l]<k[r]-D: s-=A[k[l]]; l+=1
  a*=c(s+1+A[k[r]]-1,A[k[r]])
  s+=A[k[r]]
echo a