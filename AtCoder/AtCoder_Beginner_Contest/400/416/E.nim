include atcoder/header
let N,M=nextInt()
var d=(10^12).repeat(N+1).repeat(N+1)
for i in 0..N: d[i][i]=0
for _ in 1..M:
  let
    A,B=nextInt()-1
    C=nextInt()
  d[A][B].min=C; d[B][A].min=C
let K,T=nextInt()
var D=newSeqWith(K,nextInt()-1)
for i in D: d[i][N]=T; d[N][i]=0
for k in 0..N:
  for i in 0..N:
    for j in 0..N:
      d[i][j].min=d[i][k]+d[k][j]
proc f(x,y,t0,t1:int)=
  d[x][y].min=t0; d[y][x].min=t1
  for i in 0..N:
    for j in 0..N:
      d[i][j].min=min(d[i][x]+t0+d[y][j],d[i][y]+t1+d[x][j])
let Q=nextInt()
for _ in 1..Q:
  let q=nextInt()
  if q==1:
    let
      x,y=nextInt()-1
      t=nextInt()
    f(x,y,t,t)
  elif q==2:
    let x=nextInt()-1
    f(x,N,T,0)
  else:
    echo d[0..<N].mapIt(it[0..<N].filterIt(it!=10^12).sum).sum