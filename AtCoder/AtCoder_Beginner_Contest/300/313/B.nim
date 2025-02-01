include atcoder/header
let N,M=nextInt()
var ind=newSeqWith(N,0)
for _ in 1..M:
  let u,v=nextInt()-1
  ind[v]+=1
echo (if ind.count(0)==1: ind.find(0)+1 else: -1)