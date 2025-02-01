include atcoder/header
let N,Q=nextInt()
import atcoder/dsu
var
  d=initDSU(N)
  C=(0..<N).toSeq
  l,r=C
  a=newSeqWith(N,1)
for _ in 1..Q:
  let q=nextInt()
  if q==1:
    let
      x,c=nextInt()-1
      p=d.leader(x)
      s=d.size(p)
    a[C[p]]-=s; a[c]+=s; C[p]=c
    if l[p]>0:
      let lp=d.leader(l[p]-1)
      if C[lp]==c: d.merge(p,lp); l[d.leader(p)]=l[lp]
    if r[p]<N-1:
      let rp=d.leader(r[p]+1)
      if C[rp]==c: d.merge(p,rp); r[d.leader(p)]=r[rp]
  else:
    let c=nextInt()-1
    echo a[c]