include atcoder/header
let N=nextInt()
let S=nextString()
var a=""
for i in countdown(S.len-1,0):
  if S[i]=='1': a&="A".repeat(i+1)&"B".repeat(i)
echo a.len
echo a