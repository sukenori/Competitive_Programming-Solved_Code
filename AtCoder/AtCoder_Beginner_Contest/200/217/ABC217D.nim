include atcoder/header
let L,Q=nextInt()
import atcoder/extra/structure/set_map
var s=initSortedSet[int](@[0,L])
for _ in 1..Q:
  let c,x=nextInt()
  if c==1: s.incl(x)
  else: echo *s.lower_bound(x)- *(s.lower_bound(x).pred)