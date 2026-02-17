include atcoder/header
let N,D=nextInt()
var T,L=newSeq[int](N)
for i in 0..<N:
  let Ti,Li=nextInt()
  T[i]=Ti; L[i]=Li
for k in 1..D:
  var a=0
  for i in 0..<N: a=max(a,T[i]*(L[i]+k))
  echo a