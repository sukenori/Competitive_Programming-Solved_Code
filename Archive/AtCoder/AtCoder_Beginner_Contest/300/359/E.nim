include atcoder/header
let
  N=nextInt()
  H=newSeqWith(N,nextInt())
import deques
var
  d=[(0,int.inf)].toDeque
  s=1
  a:seq[int]
for i,Hi in H:
  while d[^1][1]<Hi:
    let (p,h)=d.popLast
    s-=(p-d[^1][0])*h
  s+=(i+1-d[^1][0])*Hi; a.add(s)
  d.addLast((i+1,Hi))
echo a.join(" ")