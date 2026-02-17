include atcoder/header
let
  N=nextInt()
  S,T=newSeqWith(N,nextString())
proc f(i,j,k:int):(int,int)=
  if k==0: return (i,j)
  f(N-1-j,i,k-1)
var a=int.inf
for k in 0..3:
  var ai=k
  for i in 0..<N:
    for j in 0..<N:
      let (ni,nj)=f(i,j,k)
      if S[ni][nj]!=T[i][j]: ai+=1
  a.min=ai
echo a