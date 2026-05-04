include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N,L,R=int.input
  S=string.input
var s=Seq[@'z'+1:seq[int]]
for i in 0..<N:
  s[@(S[i])].add(i)
dump s
var a=0
for i in @'a' .. @'z':
  if s[i].len>=2:
    var r=0
    for l in 0..<s[i].len-1:
      while r+1<s[i].len and s[i][r+1]-s[i][l]<=R: r+=1
      a+=r-l; dump (l,r)
for i in @'a' .. @'z':
  if s[i].len>=2:
    var r=0
    for l in 0..<s[i].len-1:
      while r+1<s[i].len and s[i][r+1]-s[i][l]>=L: r+=1
      a-=r-l; dump (l,r)
echo a