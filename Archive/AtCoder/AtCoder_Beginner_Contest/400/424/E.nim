include atcoder/header
import heapqueue
let T=nextInt()
for _ in 1..T:
  var
    N,K,X=nextInt()
    q:HeapQueue[(float,int)]
  for _ in 1..N: q.push((-nextFloat(),1))
  while K>0:
    let (l,n)=q.pop
    if K>=n: q.push((l/2.0,n*2))
    else: q.push((l,n-K)); q.push((l/2.0,K*2))
    K-=n
  while true:
    let (l,n)=q.pop
    if X>n: X-=n
    else: echo -l; break