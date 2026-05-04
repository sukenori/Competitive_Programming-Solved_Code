include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N,K=int.input
  A=Seq[N:int.input]
  c=A.toCountTable
if c.len<=K: echo 0; quit(0)
var s:seq[int]
for k,v in c:
  s.add(k*v)
s.sort
echo s[0..^(K+1)].sum