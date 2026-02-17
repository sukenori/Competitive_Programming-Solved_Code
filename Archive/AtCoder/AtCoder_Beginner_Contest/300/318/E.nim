include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt())
var l,r=newSeqWith(N+1,0)
for Ai in A: r[Ai]+=1
var a,ai:int
r[A[0]]-=1
for i in 1..<N-1:
  if A[i-1]!=A[i]: ai-=l[A[i]]*r[A[i]]
  l[A[i-1]]+=1; r[A[i]]-=1
  if A[i-1]!=A[i]: ai+=l[A[i-1]]*r[A[i-1]]
  a+=ai
echo a