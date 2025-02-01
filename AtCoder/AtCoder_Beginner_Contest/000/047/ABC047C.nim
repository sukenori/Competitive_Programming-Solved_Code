include atcoder/header
let S=" "&nextString()
var a=0
for i in 1..<S.len:
  if S[i-1]!=S[i]: a+=1
echo a-1