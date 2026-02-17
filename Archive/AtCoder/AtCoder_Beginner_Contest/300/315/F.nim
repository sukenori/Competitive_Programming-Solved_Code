include atcoder/extra/header/chaemon_header
let
  N=nextInt()
  P=newSeqWith(N,(X:nextFloat(),Y:nextFloat()))
  Inf=2.0*10.0^4*10.0^4
  m=min(log2(Inf).int,N)
var dp=newSeqWith(N+1,newSeqWith(m+1,Inf))
dp[1][0]=0
proc d(a,b:int):float=
  return ((P[b-1].X-P[a-1].X)^2+(P[b-1].Y-P[a-1].Y)^2).sqrt
for i in 2..N:
  for j in 1..i-1:
    for k in 0..m:
      if k+i-j-1<=m:
        dp[i][k+i-j-1].min=dp[j][k]+d(j,i)
echo (block: collect(newSeq):
  for i in 0..m:
    dp[N][i]+(if i>0: 2.0^(i-1) else: 0.0)).min