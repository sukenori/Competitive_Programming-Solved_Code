include atcoder/header
let
  N,M=nextInt()
  S,T=nextString()
var c=newSeq[int](N+1)
for _ in 1..M:
  let L,R=nextInt()-1
  c[L]+=1; c[R+1]-=1
c=c.cumsummed
var a=newSeq[char](N)
for i in 0..<N:
  if c[i] mod 2==0: a[i]=S[i]
  else: a[i]=T[i]
echo a.join