include atcoder/header
let N,M=nextInt()
let A=newSeqWith(N,nextInt())
var m=A.toCountTable.pairs.toSeq.sorted
m=m&m.mapIt((it[0]+M,it[1]))
var s,si,lk=0
for (k,v) in m:
  if k-lk==1: si+=(k mod M)*v
  else: s.max=si; si=(k mod M)*v
  lk=k
echo max(0,A.sum-max(s,si))