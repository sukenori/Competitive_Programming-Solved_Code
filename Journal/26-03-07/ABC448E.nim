include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N=int.input
  A=Seq[N:int.input]
var g=newSeq[seq[int]](N)
for _ in 1..<N:
  let U,V=int.input-1
  g[U].add(V); g[V].add(U)
var
  q=[0].toDeque
  d=Seq[N:HashSet[int]]
  a=Seq[N:bool]
d[0] = @[A[0]]
while q.len>0:
  let U=q.popFirst
  for V in g[U]:
    if d[V].len==0:
      if A[V] in d[U] or a[U]: a[V]=true
      d[V] = d[U] & @[A[V]]
      q.addLast(V)
echo a.mapIt(if it: "Yes" else: "No").join("\n")