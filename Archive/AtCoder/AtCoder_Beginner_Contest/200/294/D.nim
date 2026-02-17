include atcoder/extra/header/chaemon_header
let N,Q=nextInt()
import atcoder/extra/structure/set_map
l:=initSortedSet[int](); i:=1
for _ in 1..Q:
  case nextInt()
  of 1: l.incl(i); i+=1
  of 2: l.excl(nextInt())
  else: echo *l.begin()