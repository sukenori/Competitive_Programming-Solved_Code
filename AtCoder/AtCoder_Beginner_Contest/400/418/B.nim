include atcoder/header
let
  S=nextString()
  n=S.len
var a=0.0
for i in 0..<n-2:
  for j in i+2..<n:
    if S[i]=='t' and S[j]=='t':
      a.max=(S[i..j].count('t')-2)/((j-i+1)-2)
echo a