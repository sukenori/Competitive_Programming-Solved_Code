include atcoder/header
let S=nextString()
let c=S.toCountTable.values.toSeq
let n=c.len
var a=if c.max>1: 1 else: 0
for i in 0..<n-1:
  for j in i+1..<n:
    a+=c[i]*c[j]
echo a