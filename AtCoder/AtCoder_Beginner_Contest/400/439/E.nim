include "/workspaces/AtCoder-Nim/.Library/Template.nim"
let N = int.input
var m = Seq[0: (int,int)]
loop N:
  let A, B = int.input
  m.add((A, B))
let k = m.sorted.mapIt(it[1])
