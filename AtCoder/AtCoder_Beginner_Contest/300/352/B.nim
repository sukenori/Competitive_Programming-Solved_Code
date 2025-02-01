include atcoder/header
let S,T=nextString()
var j=0
var a:seq[int]
for i in 0..<S.len:
  while S[i]!=T[j]: j+=1
  a.add(j+1); j+=1
echo a.join(" ")