include atcoder/header
let N,M=nextInt()
var s=newSeq[tuple[X,A:int]](M)
for i in 0..<M: s[i].X=nextInt()
for i in 0..<M: s[i].A=nextInt()
s.sort
let c= @[0]&(0..<M).toSeq.mapIt(s[it].A).cumsummed
if c[M]==N and (0..<M).toSeq.allIt(c[it]>=s[it].X-1):
  echo (1+N)*N div 2-(0..<M).toSeq.mapIt(s[it].X*s[it].A).sum
else: echo -1