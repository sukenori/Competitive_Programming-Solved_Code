include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  S=string.input
  n=S.len
var a=0
for i in 0..<n:
  if S[i]=='C':
    a+=min(i,n-(i+1))+1
echo a