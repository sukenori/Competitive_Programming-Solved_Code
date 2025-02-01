include atcoder/header
let
  N=nextInt()
  a,b=newSeqWith(N,nextInt()).sorted
var x:HashSet[int]
for xi in a.mapIt(it xor b[0]):
  if b.mapIt(xi xor it).sorted==a: x.incl(xi)
echo x.len
echo x.toSeq.sorted.join("\n")