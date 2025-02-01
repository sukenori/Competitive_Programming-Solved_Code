include atcoder/extra/header/chaemon_header
let N,M,K=nextInt()
var u,v,w=Seq[M:int]
for i in 0..<M:
  let ui,vi,wi=nextInt()
  u[i]=ui-1; v[i]=vi-1; w[i]=wi
import atcoder/dsu
a:=int.inf
for i in 0..<2^M:
  block b:
    if i.countSetBits==N-1:
      d:=initDSU(N); sw:=0
      for j in 0..<M:
        if i.testBit(j):
          if not d.same(u[j],v[j]):
            d.merge(u[j],v[j]); sw+=w[j]
          else: break b
      a.min=sw%K
echo a