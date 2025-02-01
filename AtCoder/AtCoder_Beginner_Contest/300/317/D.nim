include atcoder/extra/header/chaemon_header
let N=nextInt()
var
  e=newSeq[tuple[d,Z:int]](N)
  s=0
for i in 0..<N:
  let X,Y,Z=nextInt()
  e[i]=(max(0,(Y-X+1)//2),Z)
  s+=Z
var dp=newSeqWith(s+1,int.inf)
dp[0]=0
for i in 0..<N:
  for j in 0..s-e[i].Z<<1:
    dp[j+e[i].Z].min=dp[j]+e[i].d
echo min(dp[(s+1)//2..s])