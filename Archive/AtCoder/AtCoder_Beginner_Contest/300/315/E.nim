include atcoder/header
let N=nextInt()
var g=newSeqWith(N+1,newSeq[int]())
for i in 1..N:
  var C=nextInt()
  for j in 1..C: g[i].add(nextInt())
var
  d=newSeqWith(N+1,true)
  a=newSeq[int]()
proc f(i:int)=
  d[i]=false  
  for j in g[i]:
    if d[j]: f(j)
  a.add(i)
f(1)
echo a[0..^2].join(" ")