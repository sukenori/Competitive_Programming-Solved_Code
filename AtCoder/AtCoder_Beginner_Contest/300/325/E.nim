include atcoder/extra/header/chaemon_header
let N,A,B,C=nextInt()
var Dc,Dt=Seq[N,N:int]
for i in 0..<N:
  for j in 0..<N:
    D:=nextInt()
    Dc[i][j]=D*A; Dt[i][j]=D*B+C*(i!=j).int
import heapqueue
proc f(D:seq[seq[int]],s:int):seq[int]=
  q:=[(d:0,i:s)].toHeapQueue
  d:=Seq[N:int.inf]; d[s]=0
  while q.len>0:
    i:=q.pop
    for j in 0..<N:
      if (nd:=i.d+D[i.i][j])<d[j]:
        d[j]=nd; q.push((nd,j))
  return d
dc:=f(Dc,0); dt:=f(Dt,N-1)
a:=int.inf
for i in 0..<N:
  a.min=dc[i]+dt[i]
echo a