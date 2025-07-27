include atcoder/header
let
  N,M=nextInt()
  X=newSeqWith(N,nextInt())
  x=X.toHashSet.toSeq.sorted
var d:seq[int]
for i in 0..<x.len-1: d.add(x[i+1]-x[i])
echo if M<=d.len: d.sorted[0..^M].sum else: 0