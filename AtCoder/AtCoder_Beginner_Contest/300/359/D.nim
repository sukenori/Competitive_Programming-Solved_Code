include atcoder/header
let
  N,K=nextInt()
  S=nextString()
import atcoder/modint
type mint=modint998244353
var dp=newSeqWith(N+1,newSeq[mint](1 shl K))
dp[0][0]=1.mint
for i in 1..N:
  for j in 0..<1 shl K:
    let nj=fromBin[int]("0b"&j.toBin(K)[1..^1]&"0")
    if S[i-1]!='B' and (i<K or (nj+1).toBin(K)!=(nj+1).toBin(K).reversed):
      dp[i][nj+1]+=dp[i-1][j]
    if S[i-1]!='A' and (i<K or nj.toBin(K)!=nj.toBin(K).reversed):
      dp[i][nj]+=dp[i-1][j]
echo dp[N].sum