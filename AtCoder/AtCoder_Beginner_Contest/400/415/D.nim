include atcoder/header
var N,M=nextInt()
import heapqueue
var q:Heapqueue[(int,int,int)]
for i in 0..<M:
  let A,B=nextInt()
  q.push((A-B,A,B))
var a=0
while q.len>0:
  let (d,A,B)=q.pop
  if N>=A:
    let c=(N-A) div d+1
    N-=d*c; a+=c
echo a