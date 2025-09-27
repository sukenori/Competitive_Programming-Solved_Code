include atcoder/header
import deques, atcoder/modint
type mint=modint998244353
let
  N=nextInt()
  A=newSeqWith(N,newSeqWith(6,nextInt()))
var e:seq[(int,int)]
for i in 0..<N:
  for Aj in A[i]: e.add((Aj,i))
var
  d=e.sorted.toDeque
  s=newSeq[mint](N)
  p=1.mint/6.mint.pow(N)
  lp:mint
  r=N
  a:mint
while d.len>0:
  let
    (i,j)=d.peekFirst
    ls=s[j]
  while d.peekFirst==(i,j): discard d.popFirst; s[j]+=1.mint
  if ls==0.mint: p*=s[j]; r-=1
  else: p*=s[j]/ls
  if r==0: a+=i*(p-lp); lp=p
echo a