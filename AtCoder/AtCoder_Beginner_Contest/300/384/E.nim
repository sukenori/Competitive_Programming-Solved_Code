include atcoder/header
let H,W,X,P,Q=nextInt()
var S=newSeqWith(H,newSeq[int]())
for i in 0..<H:
  let Si=newSeqWith(W,nextInt())
  S[i]=Si
import deques
import heapqueue
var
  q=[(P-1,Q-1)].toDeque
  r:HeapQueue[(int,int,int)]
  d=newSeqWith(H,newSeqWith(W,false))
  a=S[P-1][Q-1]
d[P-1][Q-1]=true
while q.len>0:
  let i=q.popFirst
  for (dh,dw) in [(-1,0),(0,1),(1,0),(0,-1)]:
    let (nh,nw)=(i[0]+dh,i[1]+dw)
    if nh in 0..<H and nw in 0..<W and not d[nh][nw]:
      r.push((S[nh][nw],nh,nw)); d[nh][nw]=true
  while r.len>0 and r[0][0].float<a.float/X.float:
    let j=r.pop
    a+=j[0]; q.addLast((j[1],j[2]))
echo a