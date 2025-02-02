include atcoder/header
let N,W=nextInt()
var x=newSeqWith(W,newSeq[(int,int)]())
for i in 0..<N:
  let X,Y=nextInt()-1
  x[X].add((Y,i))
var
  a=newSeq[int](N)
  y=newSeqWith(2*10^5,-1)
  c=newSeq[int](2*10^5)
for i in 0..<W:
  x[i].sort
  for j in 0..<x[i].len:
    a[x[i][j][1]]=j
    y[j].max=x[i][j][0]
    c[j]+=1
let Q=nextInt()
for _ in 1..Q:
  let
    T=nextInt()
    A=nextInt()-1
  echo if T<=y[a[A]] or c[a[A]]<W: "Yes" else: "No"