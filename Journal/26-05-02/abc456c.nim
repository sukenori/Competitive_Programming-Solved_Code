include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
import atcoder/modint
type mint=modint998244353
let S=string.input
var
  l=0
  a=S.len.mint
for i in 1..<S.len:
  if S[i-1]==S[i]:
    a+=(i-l)*(i-l-1) div 2
    l=i
  elif i==S.len-1:
    a+=(i-l+1)*(i-l) div 2
echo a