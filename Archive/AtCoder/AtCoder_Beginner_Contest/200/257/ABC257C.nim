include atcoder/header
let N=nextInt()
let S=nextString()
var W=newSeqWith(N,nextInt())
var w=newSeqWith(2,newSeq[int](0))
for i,Si in S: w[($Si).parseInt].add(W[i])
w[0].sort; w[1].sort
if w[0].len>0: W.add(w[0][^1]+1)
var a=0
for Wi in W:
  a.max=w[0].lowerBound(Wi)+w[1].len-w[1].lowerBound(Wi)
echo a