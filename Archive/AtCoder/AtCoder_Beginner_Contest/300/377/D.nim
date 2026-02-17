include atcoder/header
let N,M=nextInt()
var r=newSeqWith(M+1,int.inf)
r[M]=M
for _ in 1..N:
  let L,R=nextInt()-1
  r[L].min=R
for i in countdown(M,1): r[i-1].min=r[i]
echo (0..<M).toSeq.mapIt(r[it]-it).sum