include atcoder/header
let N=nextInt()
var
  G,H:HashSet[(int,int)]
  A=newSeqWith(N,newSeq[int](N))
for _ in 1..nextInt():
  let u,v=nextInt()-1
  G.incl((u,v))
for _ in 1..nextInt():
  let a,b=nextInt()-1
  H.incl((a,b))
for i in 0..<N:
  for j in i+1..<N:
    let Aij=nextInt()
    A[i][j]=Aij
var
  p=(0..<N).toSeq
  a=int.inf
while true:
  var Gp:HashSet[(int,int)]
  for Gi in G:
    Gp.incl((min(p[Gi[0]],p[Gi[1]]),max(p[Gi[0]],p[Gi[1]])))
  var ai=0
  for Gpi in Gp:
    if Gpi notin H: ai+=A[Gpi[0]][Gpi[1]]
  for Hi in H:
    if Hi notin Gp: ai+=A[Hi[0]][Hi[1]]
  a.min=ai
  if not p.nextPermutation(): break
echo a