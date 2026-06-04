include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N,Q=int.input
import atcoder/fenwicktree
var
  h=Seq[N:0]
  m=Seq[4*10^6:0]
  d=0
  t=initFenwickTree[int](5*10^6)
t.add(0,N)
m[0]=N
loop Q:
  let q,v=int.input
  if q==1:
    t.add(h[v-1],-1)
    h[v-1]+=1
    t.add(h[v-1],1)
    m[h[v-1]]+=1
    if m[h[v-1]]==N:
      d+=1
  else:
    echo N-t[0..<v+d]