include atcoder/header
let N,K=nextInt()
import Deques
import heapqueue
var
  r:Deque[(int,int,int)]
  t:HeapQueue[int]
for i in 0..<N:
  let A,B,C=nextInt()
  r.addLast((A,B,C))
  t.push(A)
var
  w:Deque[(int,int)]
  e:HeapQueue[(int,int)]
  s=0
proc f(B,C:int)=
  while w.len>0 and s+w.peekFirst[1]<=K:
    let(B,C)=w.popFirst
    e.push((t[0]+B,C)); s+=C
    echo t[0]
    t.push(t[0]+B)
while t.len>0:
  while r.len>0 and r.peekFirst[0]==t[0]:
    let (A,B,C)=r.popFirst
    w.addLast((B,C)); f(B,C)
    discard t.pop
  while e.len>0 and e[0][0]==t[0]:
    let (B,C)=e.pop
    s-=C; f(B,C)
    discard t.pop