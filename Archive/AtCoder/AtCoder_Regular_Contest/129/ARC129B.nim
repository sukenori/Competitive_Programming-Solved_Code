include atcoder/header
var
  N=nextInt()
  l= -int.inf
  r=int.inf
for _ in 1..N:
  let L,R=nextInt()
  l.max=L; r.min=R
  echo if l<=r: 0 else: ceilDiv(l-r,2)