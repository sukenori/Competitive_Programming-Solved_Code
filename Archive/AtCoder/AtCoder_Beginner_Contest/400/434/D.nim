include atcoder/header
let N=nextInt()
import atcoder/extra/dp/cumulative_sum_2d
var
  c=initCumulativeSum2D[int](2001,2001)
  U,D,L,R=newSeq[int](N)
for i in 0..<N:
  let Ui,Di,Li,Ri=nextInt()-1
  U[i]=Ui; D[i]=Di; L[i]=Li; R[i]=Ri
  c.add(Ui,Li,1); c.add(Ui,Ri+1,-1); c.add(Di+1,Li,-1); c.add(Di+1,Ri+1,1)
c.build()
var
  z=0
  o=initCumulativeSum2D[int](2000,2000)
for i in 0..<2000:
  for j in 0..<2000:
    if c[0..i,0..j]==0: z+=1
    if c[0..i,0..j]==1: o.add(i,j,1)
o.build()
for i in 0..<N:
  echo z+o[U[i]..D[i],L[i]..R[i]]