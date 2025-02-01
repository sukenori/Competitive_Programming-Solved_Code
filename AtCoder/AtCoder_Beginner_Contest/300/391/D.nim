include atcoder/header
let N,W=nextInt()
import atcoder/extra/structure/set_map
var
  A=newSeq[(int,int)](N)
  x=newSeqWith(W,initSortedSet[int]())
  y=newSeq[int](W)
for i in 0..<N:
  let Xi,Yi=nextInt()
  A[i]=(Xi,Yi)
  x[Xi].incl(Yi)

let Q=nextInt()
for _ in 1..Q:
  let
    Ti=nextInt
    Ai=nextInt()-1
    y[A[Ai][1]]
    x.lower_bound(A[Ai][0])-x.begin()