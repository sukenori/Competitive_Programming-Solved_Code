include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N=int.input
  A=(Seq[N:int.input])
var a:seq[int]
for ai in [A.max,A.min+A.max]:
  let fA=A.filterIt(it!=ai)
  if fA.len mod 2==0:
    let c=fA.toCountTable
    if (0..<fA.len).allIt(c[it]==c[ai-it]):
      a.add(ai)
echo a.join(" ")