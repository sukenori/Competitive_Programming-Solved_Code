include atcoder/header
let
  N,D=nextInt()
  A=newSeqWith(N,nextInt())
  c=A.toCountTable
if D==0: echo N-c.len
else:
  var a=0
  for i in 0..<D:
    let n=10^6 div D
    var dp=newSeq[int](n+1)
    for j in 0..n:
      dp[j]=min((if j>=1: dp[j-1] else: 0)+c[D*j+i],(if j>=2: dp[j-2] else: 0)+(if j>=1: c[D*(j-1)+i] else: 0))
    a+=dp[n]
  echo a