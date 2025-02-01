include atcoder/header
let N=nextInt()
var t:Table[int,tuple[X,A:int]]
for _ in 1..N:
  let T,X,A=nextInt()
  t[T]=(X,A)
var dp=newSeqWith(5,-int.inf); dp[0]=0
for i in 1..10^5:
  var ndp=newSeqWith(5,-int.inf)
  for j in 0..4:
    ndp[j].max=(max(0,j-1)..min(j+1,4)).toSeq.mapIt(dp[it]).max
  if t.hasKey(i): ndp[t[i].X]+=t[i].A
  dp=ndp
echo dp.max