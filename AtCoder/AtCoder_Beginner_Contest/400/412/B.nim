include atcoder/header
let S,T=nextString()
var a=true
for i in 1..<S.len:
  if S[i].isUpperAscii:
    if S[i-1] notin T: a=false
echo if a: "Yes" else: "No"