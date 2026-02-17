include atcoder/extra/header/chaemon_header
let N,M=nextInt()
var
  C=Seq[N:float]
  P=Seq[N:int]
  S=Seq[N,0:int]
for i in 0..<N:
  C[i]=nextFloat()
  P[i]=nextInt()
  for _ in 0..<P[i]: S[i].add(nextInt())
var dp=Seq[M+1:1.0e6]; dp[M]=0.0
for i in 0..<M<<1:
  for j in 0..<N:
    var s=0.0; var nz=0.0
    for k in 0..<P[j]:
      if S[j][k]!=0: s+=dp[min(M,i+S[j][k])]; nz+=1
    dp[i].min=s/nz+C[j]*P[j].float/nz
echo dp[0]