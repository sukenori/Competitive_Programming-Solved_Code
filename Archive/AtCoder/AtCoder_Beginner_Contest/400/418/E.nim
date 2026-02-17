include atcoder/header
let N=nextInt()
var X,Y=newSeq[int](N)
for i in 0..<N:
  let Xi,Yi=nextInt()
  X[i]=Xi; Y[i]=Yi
import rationals
var
  r:Table[Rational[int],seq[int]]
  ri:seq[int]
for i in 0..<N-1:
  for j in i+1..<N:
    let m=abs(X[j]-X[i])+abs(Y[j]-Y[i])
    if X[j]!=X[i]:
      let rj=(Y[j]-Y[i])//(X[j]-X[i])
      if r.hasKeyOrPut(rj,@[m]): r[rj].add(m)
    else:
      ri.add(m)
let v=r.values.toSeq & @ri
var s,d=0
for vi in v:
  s+=vi.len*(vi.len-1) div 2
  d+=vi.toCountTable.values.toSeq.mapIt(it*(it-1) div 2).sum
echo s-d div 2