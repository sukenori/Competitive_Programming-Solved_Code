include atcoder/header
let N,M=nextInt()
import atcoder/dsu
var
  d=initDSU(N)
  c=0.repeat(N)
  e:seq[(int,int)]
  a=0
for _ in 1..M:
  let A,B=nextInt()-1
  e.add((min(A,B),max(A,B)))
  if not (d.same(A,B) and c[A]==1 and c[B]==1) and (d.same(A,B) or c[A]==2 or c[B]==2): a+=1
  else:
    d.merge(A,B)
    c[A]+=1; c[B]+=1
echo d.groups
echo c
if d.groups.len>1: echo a+d.groups.len
else:
  echo a
  let o=(0..<N).toSeq.filterIt(c[it]==1).sorted
  if (o[0],o[1]) in e: echo a-1
  else: echo a+1