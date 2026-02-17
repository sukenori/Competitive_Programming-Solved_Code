include atcoder/header
let N,M=nextInt()
var g=newSeq[newSeq[tuple[t,l:int]]()](N+1)
for _ in 1..M:
  let A,B,C=nextInt()
  g[A].add((B,C)); g[B].add((A,C))
for i in 1..N: g[0].add((i,0))
var
  d=newSeq[bool](N+1)
  a=0
proc f(i,s:int)=
  for j in g[i]:
    if not d[j.t]:
      d[j.t]=true; f(j.t,s+j.l)
      d[j.t]=false
  a.max=s
d[0]=true; f(0,0)
echo a