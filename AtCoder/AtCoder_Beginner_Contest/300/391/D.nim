include atcoder/header
let N,W=nextInt()
var b:seq[(int,int,int)]
for i in 0..<N:
  let X,Y=nextInt()-1
  b.add((X,Y,i))
b.sort
var
  x=newSeqWith(W,newSeq[int]())
  n:Table[int,int]
for (X,Y,i) in b:
  x[X].add(Y)
  n[i]=x[X].len-1
var t=newSeq[int](x.mapIt(it.len).max)
for i in 0..<x.mapIt(it.len).max:
  for j in 0..<W:
    if i<x[j].len: t[i].max=x[j][i]
    else: t[i]=int.inf
let Q=nextInt()
for _ in 1..Q:
  let
    T=nextInt()
    A=nextInt()-1
  echo if T<=t[n[A]]: "Yes" else: "No"