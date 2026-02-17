include atcoder/header
let N=nextInt()
import heapqueue
var
  q:HeapQueue[(int,int,int)]
  a=0
for _ in 1..N:
  let A=nextInt()
  q.push(((2^2-1^2)*A,1,A))
  a+=1^2*A
for _ in 1..N-2:
  let (s,d,A)=q.pop
  a+=((d+1)^2-d^2)*A
  q.push((((d+2)^2-(d+1)^2)*A,d+1,A))
echo a