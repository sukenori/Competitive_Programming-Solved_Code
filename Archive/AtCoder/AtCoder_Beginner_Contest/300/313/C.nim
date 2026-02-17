include atcoder/extra/header/chaemon_header
let
  N=nextInt()
  A=Seq[N:nextInt()].sorted(Descending)
  a=A.sum//N
  m=A.sum%N
var d=0
for i in 0..<m: d+=abs(A[i]-(a+1))
for i in m..<N: d+=abs(A[i]-a)
echo d//2