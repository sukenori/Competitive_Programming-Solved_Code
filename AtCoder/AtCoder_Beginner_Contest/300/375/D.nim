include atcoder/header
let S=nextString()
var t:Table[char,seq[int]]
for i,Si in S:
  if t.hasKeyOrPut(Si,@[i]): t[Si].add(i)
var a=0
for v in t.values:
  var l=v.len
  for i in 0..<l:
    a+=v[i]*(-l+1+i+i)
  a-=l*(l-1) div 2
echo a