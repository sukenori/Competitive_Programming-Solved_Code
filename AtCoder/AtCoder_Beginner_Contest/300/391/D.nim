include atcoder/header
let N,W=nextInt()
var x=newSeqWith(W,newSeq[(int,int)]())
for i in 0..<N:
  let X,Y=nextInt()-1
  x[X].add((Y,i))
var
  a=newSeq[int](N)
  y=newSeqWith(N,-1)
  c=newSeq[int](N)
for i in 0..<W:
  x[i].sort
  for j,(yj,ij) in x[i]:
    a[ij]=j; y[j].max=yj; c[j]+=1
let Q=nextInt()
for _ in 1..Q:
  let
    T=nextInt()
    A=nextInt()-1
  echo if T<=y[a[A]] or c[a[A]]<W: "Yes" else: "No"