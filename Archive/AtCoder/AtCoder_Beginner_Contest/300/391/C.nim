include atcoder/header
let N,Q=nextInt()
var
  p=(0..<N).toSeq
  n=newSeqWith(N,1)
  a=0
for _ in 1..Q:
  let q=nextInt()
  if q==1:
    let P,H=nextInt()-1
    if n[p[P]]==2: a-=1
    n[p[P]]-=1
    p[P]=H
    if n[p[P]]==1: a+=1
    n[p[P]]+=1
  else:
    echo a