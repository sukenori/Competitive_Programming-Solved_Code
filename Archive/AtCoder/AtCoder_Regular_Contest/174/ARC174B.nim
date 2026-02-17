include atcoder/header
let T=nextInt()
for _ in 1..T:
  let
    A=newSeqWith(5,nextInt())
    P=newSeqWith(5,nextInt())
  let d=max(0,A.sum*3-(1..5).mapIt(A[it-1]*it).sum)
  var a=int.inf
  for i in [0,d div 2,d div 2+1]:
    a.min=P[4]*i+max(0,(d-i*2)*P[3])
  echo a