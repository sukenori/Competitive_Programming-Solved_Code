include atcoder/header
let N=nextInt()
var g=newSeqWith(N,newSeq[int](0))
for _ in 1..N-1:
  let u,v=nextInt()-1
  g[u].add(v); g[v].add(u)
let C=newSeqWith(N,nextInt())
let sC=C.sum
var s:int
proc c(i,j:int):int=
  var f=true
  result=C[j]
  for k in g[j]:
    if k!=i:
      let ck=c(j,k)
      result+=ck
      if ck>sC div 2: f=false
  if sC-result>sC div 2: f=false
  if f: s=j
discard c(-1,0)
import deques
var q=[s].toDeque
var d=newSeqWith(N,-1); d[s]=0
var a=0
while q.len>0:
  let i=q.popFirst
  for j in g[i]:
    if d[j] == -1:
      d[j]=d[i]+1
      a+=C[j]*d[j]
      q.addLast(j)
echo a