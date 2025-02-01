include atcoder/extra/header/chaemon_header
let H,W,N=nextInt()
h:=Seq[H+1,W+1:true]
for _ in 1..N: h[nextInt()][nextInt()]=false
dp:=Seq[H+1,W+1:0]; a:=0
for i in 1..H:
  for j in 1..W:
    if h[i][j]: dp[i][j]=min([dp[i-1][j-1],dp[i][j-1],dp[i-1][j]])+1
    a+=dp[i][j]
echo a