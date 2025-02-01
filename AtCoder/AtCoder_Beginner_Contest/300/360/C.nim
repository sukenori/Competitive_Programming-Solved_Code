include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt())
  W=newSeqWith(N,nextInt())
import heapqueue
var n:HeapQueue[int]
var s=newSeqWith(N+1,n)
for i in 0..<N: s[A[i]].push(-W[i])
var a=W.sum
for i in 1..N:
  if s[i].len>0: a+=s[i][0]
echo a