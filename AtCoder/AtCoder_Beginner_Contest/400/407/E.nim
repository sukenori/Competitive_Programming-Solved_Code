include atcoder/header
import heapqueue
let T=nextInt()
for _ in 1..T:
  let
    N=nextInt()
    A=newSeqWith(N*2,nextInt())
  var
    q:HeapQueue[int]
    a=A[0]
  for i in 2..N:
    for j in (i-1)*2-1..<i*2-1: q.push(-A[j])
    a+=(-q.pop)
  echo a