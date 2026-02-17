include "/workspaces/AtCoder-Nim/.Library/Template.nim"
let
  N = int.input
  A, B, C = Seq[N: int.input]
var dp = Seq[N, 3: int]
dp[0][0] = A[0]
for i in 1..<N:
  dp[i][0] = dp[i-1][0] + A[i]
  if i < N-1:
    dp[i][1] = max(dp[i-1][0], dp[i-1][1]) + B[i]
  if 1 < i:
    dp[i][2] = max(dp[i-1][1], dp[i-1][2]) + C[i]
echo dp[^1][2]