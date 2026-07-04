include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N=int.input
  S=string.input
var
  f=true
  a=[1].toDeque
for i in 1..<N:
  if S[i-1]=='o': f=not f
  if f:
    a.addLast(i+1)
  else: a.addFirst(i+1)
var ans=a.toSeq
if S.count("o") mod 2==1: ans.reverse
echo ans.join(" ") 
