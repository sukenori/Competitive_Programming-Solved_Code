include atcoder/header
let T,M=nextInt()
var c=newSeqWith(5001,newSeq[int](5001))
for i in 1..5000:
  c[i][0]=1; c[i][i]=1
  for j in 1..<i: c[i][j]=(c[i-1][j]+c[i-1][j-1]) mod M
for _ in 1..T:
  let
    N=nextInt()
    C=newSeqWith(N,nextInt())
  var
    s=C.sum
    a=1
  for Ci in C: a=(a*c[s][Ci]) mod M; s-=Ci
  echo a