include atcoder/header
let N=nextInt()
import deques
var b:Deque[int]
for _ in 1..N:
  let A=nextInt()
  b.addLast(A)
  while true:
    if b.len<=1: break
    let l=b.popLast
    if b.peekLast!=l: b.addLast(l); break
    else: b.popLast; b.addLast(l+1)
echo b.len