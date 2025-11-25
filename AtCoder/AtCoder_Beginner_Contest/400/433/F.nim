include atcoder/header
let
  S=nextString()
  N=S.len
var s=newSeqWith(10,newSeq[int](N))
for i in 0..<N: s[($S[i]).parseInt][i]+=1
for i in 0..9: s[i].cumsum
import atcoder/modint
type mint=modint998244353
var fac,ifac=newSeq[mint](N+1)
fac[0]=1.mint; for i in 1..N: fac[i]=fac[i-1]*i
ifac[N]=fac[N].inv; for i in countdown(N-1,0): ifac[i]=ifac[i+1]*(i+1)
proc c(n,r:int):mint =
  fac[n]*ifac[r]*ifac[n-r]
var a=0.mint
for i in 0..<N:
  let
    Si=($S[i]).parseInt
    l=if i>0: s[Si][i-1] else:0
  if Si in 0..8:
    let r=s[Si+1][^1]-s[Si+1][i]
    a+=c(l+r,l+1)
echo a