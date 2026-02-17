include "/workspaces/AtCoder-Nim/.Library/Template.nim"
var
  N,K=int.input
  s=N
  a=0
while s<K: N+=1; s+=N; a+=1
echo a