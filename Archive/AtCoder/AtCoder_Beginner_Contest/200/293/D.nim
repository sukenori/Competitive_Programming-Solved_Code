include atcoder/header
let N,M=nextInt()
import atcoder/dsu
var
  d=initDSU(N)
  c=newSeq[int](N)
for _ in 1..M:
  var
    A=nextInt()-1
    B=nextString()
    C=nextInt()-1
    D=nextString()
  d.merge(A,C)
  c[A]+=1; c[C]+=1
var X,Y=0
for di in d.groups:
  if di.mapIt(c[it]).allIt(it==2): X+=1 else: Y+=1
echo X," ",Y