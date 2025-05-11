include atcoder/header
let N,M=nextInt()
import atcoder/dsu
var
  u=initDSU(N)
  d=newSeq[int](N)
for _ in 1..M:
  let A,B=nextInt()-1
  u.merge(A,B)
  d[A]+=1; d[B]+=1
echo if u.groups.len==1 and d.allIt(it==2): "Yes" else: "No"