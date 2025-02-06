include atcoder/header
let
  N=nextInt()
  A,B=newSeqWith(N,nextInt())
import heapqueue
var
  d=0
  q:HeapQueue[int]
  a=0
for i in 0..<N:
  if A[i]>B[i]: q.push(B[i]-A[i])
  if A[i]<B[i]: d+=A[i]-B[i]; a+=1
while d<0:
  if q.len>0: d-=q.pop; a+=1
  else: echo -1; quit()
echo a