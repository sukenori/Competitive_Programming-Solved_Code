include atcoder/header
let N=nextInt()
var
  G=newSeqWith(N,newSeq[int]())
  e:HashSet[(int,int)]
for _ in 1..<N:
  let U,V=nextInt()-1
  G[U].add(V); G[V].add(U)
  e.incl((U,V))
var f=0.repeat(N)
import deques
var
  q=[0].toDeque
  d=false.repeat(N)
while q.len>0:
  let i=q.popFirst
  d[i]=true
  for j in G[i]:
    if not d[j]:
      f[j]=1-f[i]
      q.addLast(j)
var s:HashSet[(int,int)]
for i in 0..<N-1:
  for j in i+1..<N:
    if (i,j) notin e and f[i]!=f[j]: s.incl((i,j))
if s.len mod 2==0: echo "Second"
else:
  echo "First"
  let (i,j)=s.toSeq[0]; echo i+1," ",j+1; s.excl((i,j))
while true:
  var i,j=nextInt()-1
  if (i,j)==(-1,-1): quit()
  if i>j: swap(i,j)
  s.excl((i,j))
  let (u,v)=s.toSeq[0]; echo u+1," ",v+1; s.excl((u,v))