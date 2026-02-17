include atcoder/header
let H,W,N=nextInt()
var
  x,y:Table[int,seq[int]]
  cx=newSeq[int](H)
  cy=newSeq[int](W)
for _ in 1..N:
  let X,Y=nextInt()-1
  if x.hasKeyOrPut(X,@[Y]): x[X].add(Y)
  if y.hasKeyOrPut(Y,@[X]): y[Y].add(X)
  cx[X]+=1; cy[Y]+=1
let Q=nextInt()
for _ in 1..Q:
  let q,i=nextInt()-1
  if q==0:
    echo cx[i]
    if cx[i]>0:
      for yj in x[i]:
        if cy[yj]>0: cy[yj]-=1
    cx[i]=0
  else:
    echo cy[i]
    if cy[i]>0:
      for xj in y[i]:
        if cx[xj]>0: cx[xj]-=1
    cy[i]=0