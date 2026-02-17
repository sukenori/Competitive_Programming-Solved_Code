include atcoder/header; import heapqueue
let N,M=nextInt()
var
  T,W,S:int
  q:HeapQueue[(int,int,int)]
  l=(0..<N).toSeq.toHeapQueue
  a=newSeq[int](N)
for i in 1..M:
  (T,W,S)=newSeqWith(3,nextInt())
  q.push((T,W,S))
while q.len>0:
  (T,W,S)=q.pop
  if W>0:
    if l.len>0:
      var p=l.pop; a[p]+=W; q.push((T+S,0,p))
  else: l.push(S)
for ai in a: echo ai