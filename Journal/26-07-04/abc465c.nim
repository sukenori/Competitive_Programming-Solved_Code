include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N=int.input
  S=string.input
var
  a=Seq[N:int]
  l=0
  r=N-1
  f=true
for i in (N-1..0,1):
  if S[i]=='o': f=not f
  if f: a[r]=i+1; r-=1
  else: a[l]=i+1; l+=1
echo a.join(" ")