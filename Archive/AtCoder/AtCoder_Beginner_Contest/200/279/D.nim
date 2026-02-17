include atcoder/header
let A,B=nextInt()
proc f(m:int):float=
  A.float/(m.float+1.0).sqrt+(B*m).float
var
  l=0
  r=ceilDiv(A,B)
while r-l>2:
  let
    ml=(l*2+r) div 3
    mr=(l+r*2) div 3
  if f(ml)>f(mr): l=ml
  else: r=mr
echo (l..r).toSeq.mapIt(f(it)).min