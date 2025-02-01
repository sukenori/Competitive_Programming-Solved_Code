include atcoder/extra/header/chaemon_header
import atcoder/extra/other/bitutils
let N=nextInt()
var D=newSeqWith(N,newSeq[int](N))
for i in 0..<N-1:
  for j in i+1..<N:
    D[i][j]=nextInt()
var dp=newSeq[int](1<<N)
for i in 0..<(1<<N):
  for j in 0..<N-1:
    for k in j+1..<N:
      if i[j]==0 and i[k]==0:
        dp[i|(1<<j)|(1<<k)].max=dp[i]+D[j][k]
echo dp[(1<<N)-1]