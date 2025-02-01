include atcoder/extra/header/chaemon_header
N:=nextInt()
P:=Seq[N:nextfloat()]
dp:=Seq[N+1:0.0]
for i in 0..<N:
  for j in 0..i<<1:
    dp[j+1].max=0.9*dp[j]+P[i]
d:=0.0
for i in 1..N:
  d+=0.9^(i-1)
  dp[i]=dp[i]/d-1200.0/((i.float).sqrt)
echo dp[1..N].max