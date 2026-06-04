include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
var
  N,M=int.input
  a=0
while M!=0:
  M=N mod M
  a+=1
echo a