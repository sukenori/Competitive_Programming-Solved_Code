include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N=int.input
  X=string.input
var s=Seq[5:false]
for i in 1..N:
  let S=string.input
  for j in 0..<5:
    if S[j]=='o': s[j]=true
(s["ABCDE".find(X)]).asYesNo