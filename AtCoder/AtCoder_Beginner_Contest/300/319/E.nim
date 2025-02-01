include atcoder/header
let
  N,X,Y=nextInt()
  b=newSeqWith(N-1,(P:nextInt(),T:nextInt()))
  n=(1..8).toSeq.foldl(lcm(a,b))
  Q=nextInt()
  q=newSeqWith(Q,nextInt())
var a=newSeq[int](n)
for i in 0..<n:
  a[i]=i
  for j in 0..<N-1:
    var m=a[i] mod b[j].P
    a[i]+=(if m>0: b[j].P-m else: 0)+b[j].T
for qi in q:
  var s=qi+X
  echo s-s mod n+a[s mod n]+Y