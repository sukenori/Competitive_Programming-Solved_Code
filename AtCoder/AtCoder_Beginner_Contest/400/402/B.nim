include atcoder/header
import deques
var d:Deque[int]
let Q=nextInt()
for _ in 1..Q:
  let q=nextInt()
  if q==1:
    let X=nextInt()
    d.addLast(X)
  else:
    echo d.popFirst