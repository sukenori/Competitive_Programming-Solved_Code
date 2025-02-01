include atcoder/header
let N=nextInt()
let A=newSeqWith(N,nextInt())
var e=newSeqWith(N,0)
for i,Ai in A:
  var n=Ai
  var d:seq[int]
  for j in 1..n.toFloat.sqrt.toInt:
    if n mod j==0:
      d.add(j)
      if j^2!=n: d.add(n div j)
  for dj in d.sorted(Descending):
    if (dj.toFloat.sqrt.toInt)^2==dj: e[i]=Ai div dj; break
var a=0
for k,v in e.toCountTable.pairs:
  if k==0: a+=v*(N-1)-v*(v-1) div 2
  else: a+=v*(v-1) div 2
echo a