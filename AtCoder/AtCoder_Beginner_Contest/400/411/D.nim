include atcoder/header
let N,Q=nextInt()
var o=newSeq[tuple[q,p:int;s:string]](Q)
for i in 0..<Q:
  let q,p=nextInt()
  var s=""
  if q==2: s=nextString()
  o[i]=(q,p,s)
import deques
var
  j=0
  a:Deque[string]
for i in countdown(Q-1,0):
  if o[i].q==3 and j==0: j=o[i].p
  if o[i].q==2 and o[i].p==j: a.addFirst(o[i].s)
  if o[i].q==1 and o[i].p==j: j=0
echo a.toSeq.join