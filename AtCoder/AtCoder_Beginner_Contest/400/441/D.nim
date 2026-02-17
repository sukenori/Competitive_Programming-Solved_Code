include "/workspaces/AtCoder-Nim/.Library/Template.nim"
let N,M,L,S,T=int.input
var g=Seq[N:seq[tuple[t,w:int]]]
for _ in 1..M:
  let
    U,V=int.input-1
    C=int.input
  g[U].add((V,C))
var
  q=[(0,0,0)].toDeque
  a:HashSet[int]
while q.len>0:
  let (u,c,w)=q.popFirst
  for v in g[u]:
    if c+1==L and w+v.w in S..T: a.incl(v.t+1)
    if c<L: q.addLast((v.t,c+1,w+v.w))
echo a.toSeq.sorted.join(" ")