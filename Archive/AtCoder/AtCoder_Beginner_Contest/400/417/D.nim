include atcoder/header
let N=nextInt()
var P,A,B=newSeq[int](N)
for i in 0..<N:
  let Pi,Ai,Bi=nextInt()
  P[i]=Pi; A[i]=Ai; B[i]=Bi
var dp=newSeqWith(N+1,(newSeq[int](1001)))
for i in 0..1000: dp[N][i]=i
for i in countdown(N-1,0):
  for j in 0..1000:
    if j<=P[i]:
      if j+A[i]<=1000: dp[i][j]=dp[i+1][j+A[i]]
    else:
      dp[i][j]=dp[i+1][max(0,j-B[i])]
let
  c=B.cumsummed
  Q=nextInt()
for _ in 1..Q:
  let X=nextInt()
  if X<=1000: echo dp[0][X]
  else:
    let i=c.lowerBound(X-1000)
    if i==N: echo X-c[^1]
    else: echo dp[i+1][X-c[i]]