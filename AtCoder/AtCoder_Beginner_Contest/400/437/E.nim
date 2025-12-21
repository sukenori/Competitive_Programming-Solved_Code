include "../.Library/template.nim"
let N = int.input
type Node = ref object
  map: Table[int, Node]
  idx: seq[int]
var A = Seq[N+1: Node]
A[0] = Node(map: Table[int, Node](), idx: @[])
for i in 1 .. N:
  let x, y = int.input
  if A[x].map.hasKey(y):
    A[i] = A[x].map[y]; A[i].idx.add(i)
  else:
    A[i] = Node(map: Table[int, Node](), idx: @[i])
    A[x].map[y] = A[i]
var a = Seq[0: int]
proc dfs(i: Node) =
  a.add(i.idx)
  for j in i.map.keys.toSeq.sorted:
    dfs(i.map[j])
dfs(A[0])
echo a.join(" ")