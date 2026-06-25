include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let S=string.input
var a=Seq[0:string]
for Si in S:
  if Si.isDigit: a.add($Si)
echo a.join