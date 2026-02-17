include atcoder/header
let N=nextInt()
let A=newSeqWith(N,nextInt())
import atcoder/modint
type mint=modint998244353
var dp=newSeqWith(10,0.mint)
dp[A[0]]=1.mint
for i in 1..<N:
  var ndp=newSeqWith(10,0.mint)
  for j in 0..9:
    ndp[(j+A[i]) mod 10]+=dp[j]
    ndp[(j*A[i]) mod 10]+=dp[j]
  dp=ndp
echo dp.join("\n")