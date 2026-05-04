include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N=int.input
  A=Seq[N:int.input]
var g=newSeq[seq[int]](N)
for _ in 1..<N:
  let U,V=int.input-1
  g[U].add(V); g[V].add(U)
var
  d=false.repeat(N)
  a=Seq[N:bool]
proc dfs(U:int,p:HashSet[int])=
  d[U]=true
  for V in g[U]:
    if not d[V]:
      if A[V] in p or a[U]:
        a[V]=true
        dfs(V,[0].toHashSet)
      else: dfs(V,p+[A[V]].toHashSet)
dfs(0,[A[0]].toHashSet)
echo a.mapIt(if it: "Yes" else: "No").join("\n")