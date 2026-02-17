include atcoder/header
let N=nextInt()
var
  X,R=newSeq[int](N)
  x:HashSet[int]
for i in 0..<N:
  let Xi,Ri=nextInt()
  X[i]=Xi; R[i]=Ri
  x.incl(Xi+Ri); x.incl(Xi-Ri)
let c=x.toSeq.sorted
import atcoder/dsu
var
  d=initDSU(x.len)
  s,l:HashSet[int]
for i in 0..<N:
  let
    u=c.lowerBound(X[i]+R[i])
    v=c.lowerBound(X[i]-R[i])
  if d.same(u,v): s.incl(u)
  else: d.merge(u,v)
for si in s: l.incl(d.leader(si))
echo x.len-d.groups.len+l.len