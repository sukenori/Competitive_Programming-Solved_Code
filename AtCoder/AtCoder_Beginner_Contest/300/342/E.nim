include atcoder/header
let N,M=nextInt()
var g=newSeqWith(N,newSeq[tuple[f,l,d,k,c:int]](0))
for i in 0..<M:
  let l,d,k,c,A,B=nextInt()
  g[B-1].add((A-1,l,d,k,c))
var f=newSeqWith(N,-int.inf); f[^1]=int.inf
import heapqueue
var q=[(t:(-f[^1]),i:N-1)].toHeapQueue
while q.len>0:
  let i=q.pop
  for j in g[i.i]:
    let r=f[i.i]-j.c-j.l
    if r>=0:
      let nf=j.l+min(r div j.d,j.k-1)*j.d
      if nf>f[j.f]: f[j.f]=nf; q.push((-f[j.f],j.f))
for i in 0..<N-1:
  if f[i] != -int.inf: echo f[i]
  else: echo "Unreachable"