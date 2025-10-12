include atcoder/header
let
  N,M=nextInt()
  X=newSeqWith(N,nextInt())
  x=X.toHashSet.toSeq.sorted
  d=(0..<x.len-1).toSeq.mapIt(x[it+1]-x[it]).sorted
echo if M<=d.len: d[0..^M].sum else: 0