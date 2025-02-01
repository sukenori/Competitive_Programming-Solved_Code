include atcoder/header
let
  N,M=nextInt()
  A=newSeqWith(N,nextInt())
  m=(A&A).cumsummed.mapIt(it mod M)
var c=newSeq[int](M)
for i in 0..<N-1: c[m[i]]+=1
var a=c[0]
for i in 0..<N-1:
  c[m[i]]-=1; c[m[N-1+i]]+=1
  a+=c[m[i]]
echo a