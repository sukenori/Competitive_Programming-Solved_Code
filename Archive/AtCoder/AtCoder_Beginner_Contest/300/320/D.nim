include atcoder/header,deques
let N,M=nextInt()
var
  G=newSeq[seq[tuple[to,x,y:int]]](N+1)
  a=newSeq[tuple[x,y:int]](N+1)
for i in 1..M:
  var A,B,X,Y=nextInt()
  G[A].add((B,X,Y)); G[B].add((A,-X,-Y))
var
  q=[1].toDeque
  d=newSeq[bool](N+1)
while q.len>0:
  var i=q.popFirst; d[i]=true
  for (to,x,y) in G[i]:
    if not d[to]:
      a[to]=(a[i].x+x,a[i].y+y)
      q.addLast(to)
for i in 1..N:
  if d[i]: echo a[i].x," ",a[i].y
  else: echo "undecidable"