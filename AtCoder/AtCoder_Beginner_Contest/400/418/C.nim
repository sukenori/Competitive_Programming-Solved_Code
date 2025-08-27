include atcoder/header
import deques
let N,Q=nextInt()
var A=newSeqWith(N,nextInt()).sorted.toDeque
let m=A.peekLast
var
  s=0
  a=newSeq[int](m+1)
for i in 1..m:
  while A.peekFirst==i-1: s+=A.popFirst
  a[i]=s+(i-1)*A.len+1
for i in 0..<Q:
  let B=nextInt()
  echo if B<=m: a[B] else: -1