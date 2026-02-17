include atcoder/header
import heapqueue
var h:Heapqueue[int]
let Q=nextInt()
for _ in 1..Q:
  let q=nextInt()
  if q==1:
    let x=nextInt()
    h.push(x)
  else:
    echo h.pop