include atcoder/header
let N=nextInt()
var W,H,B=newSeq[int](N)
for i in 0..<N:
  let Wi,Hi,Bi=nextInt()
  W[i]=Wi; H[i]=Hi; B[i]=Bi
var dp=newSeqWith(N+1,newSeqWith(500*N+1,0))
for i in 0..<N:
  for j in countdown(500*N,0):
    if 0<=j-W[i]: dp[i+1][j].max=dp[i][j-W[i]]+H[i]
    dp[i+1][j].max=dp[i][j]+B[i]
echo dp[^1][0..W.sum div 2].max