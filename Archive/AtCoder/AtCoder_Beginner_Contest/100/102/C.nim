include atcoder/header
let N=nextInt()
var A=newSeq[int](N)
for i in 0..<N:
  let Ai=nextInt()
  A[i]=Ai-(i+1)
A.sort
echo A.mapIt(abs(it-A[N div 2])).sum