include atcoder/header
let N,S,T=nextInt()
var x,y=newSeqWith(N,newSeq[int](2))
for i in 0..<N:
  for j in 0..1:
    let xj,yj=nextInt()
    x[i][j]=xj; y[i][j]=yj
var
  p=(0..<N).toSeq
  a=int.inf.float
while true:
  for r in 0..<1 shl N:
    var
      lx,ly=0
      t=0.0
    for i in 0..<N:
      let j=r shr i and 1
      t+=((x[p[i]][j]-lx)^2+(y[p[i]][j]-ly)^2).float.sqrt/S.float
      t+=((x[p[i]][1-j]-x[p[i]][j])^2+(y[p[i]][1-j]-y[p[i]][j])^2).float.sqrt/T.float
      lx=x[p[i]][1-j]; ly=y[p[i]][1-j]
    a.min=t
  if not p.nextPermutation(): break
echo a