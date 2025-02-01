include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt())
import atcoder/modint
type mint=modint998244353
var dp=newSeqWith(N+1,newSeq[Table[(int,int),mint]](N+1))
for i in 1..N:
  for j in 1..N:
    dp[i][j]=dp[i-1][j]
    if j==1:
      if dp[i][j].hasKeyOrPut((A[i-1],0),1.mint): dp[i][j][(A[i-1],0)]+=1
    elif j==2:
      for k,v in dp[i-1][j-1].pairs:
        if dp[i][j].hasKeyOrPut((A[i-1],A[i-1]-k[0]),v): dp[i][j][(A[i-1],A[i-1]-k[0])]+=v
    else:
      for k,v in dp[i-1][j-1].pairs:
        if k[0]+k[1]==A[i-1]:
          if dp[i][j].hasKeyOrPut((A[i-1],k[1]),v): dp[i][j][(A[i-1],k[1])]+=v
for i in 1..N:
  stdout.write (if dp[N][i].len>0: dp[N][i].values.toSeq.foldl(a+b) else: 0)," "