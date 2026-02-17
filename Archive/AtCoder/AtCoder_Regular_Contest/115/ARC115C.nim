include atcoder/header
let N=nextInt()
var A=newSeq[int](0)
for i in 1..N:
  var ij=i
  var f=[(1,1)].toTable
  for j in 2..i.toFloat.sqrt.toInt:
    while ij mod j==0:
      if f.hasKeyOrPut(j,1): f[j]+=1
      ij=ij div j
  if ij>1: f[ij]=1
  A.add(f.values.toSeq.sum)
echo A.join(" ")