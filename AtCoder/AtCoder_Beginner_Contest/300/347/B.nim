include atcoder/header
let S=nextString()
var s:HashSet[string]
for i in 0..<S.len:
  for j in i..<S.len:
    s.incl(S[i..j])
echo s.len