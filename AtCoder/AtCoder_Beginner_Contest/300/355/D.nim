include atcoder/header
let N=nextInt()
var l,r=newSeq[int](N)
for i in 0..<N:
  let li,ri=nextInt()
  l[i]=li; r[i]=ri
l.sort
var a=N*(N-1) div 2
for ri in r: a-=N-l.upperBound(ri)
echo a