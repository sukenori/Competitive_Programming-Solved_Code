include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N=int.input
  S=string.input
var
  a:seq[char]
  f=false
for i in 0..<N:
  if f or S[i]!='o': a.add(S[i]); f=true
echo a.join