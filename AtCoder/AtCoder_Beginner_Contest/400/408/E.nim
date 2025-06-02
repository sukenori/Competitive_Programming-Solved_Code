include atcoder/header
let N,M=nextInt()
var
  g=newSeqWith(N,newSeq[tuple[i,t,w:int]]())
  e=newSeq[tuple[u,v,w:int]](M)
for i in 0..<M:
  let
    u,v=nextInt()-1
    w=nextInt()
  g[u].add((i,v,w)); g[v].add((i,u,w))
  e[i]=(u,v,w)
import heapqueue
var
  w=(2^30-1).repeat(N)
  f=true.repeat(M)
w[0]=0
for i in countdown(29,0):
  var
    q=[(w:0,i:0)].toHeapQueue
    d=false.repeat(N)
  while q.len>0:
    let j=q.pop
    if not d[j.i]:
      d[j.i]=true
      for k in g[j.i]:
        if f[k.i]:
          let nw=j.w+(k.w shr i and 1)
          if nw<(w[k.t] shr i and 1):
            w[k.t]-=1 shl i; q.push((nw,k.t))
  if (w[^1] shr i and 1)==0:
    for j in 0..<M:
      if (e[j].w shr i and 1)==1: f[j]=false
echo w[^1]