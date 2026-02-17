include atcoder/header
import deques
var A:Deque[tuple[c,x:int]]
let Q=nextInt()
for _ in 1..Q:
  let q=nextInt()
  if q==1:
    let c,x=nextInt()
    A.addLast((c,x))
  else:
    var
      k=nextInt()
      a=0
    while k>0:
      let Ai=A.popFirst
      if Ai.c>k:
        A.addFirst((Ai.c-k,Ai.x))
        a+=k*Ai.x; k=0
      else:
        a+=Ai.c*Ai.x; k-=Ai.c
    echo a