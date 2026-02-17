include atcoder/header
let S=nextString()
var c=newSeq[int](3)
for i,ic in "abc": c[i]=S.count(ic)
echo if c.max-c.min<=1: "YES" else: "NO"