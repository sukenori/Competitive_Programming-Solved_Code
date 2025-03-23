include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt())
  c=A.toCountTable
var n,a=0
for i in 0..<N:
  if c[A[i]]==1 and n<A[i]: n=A[i]; a=i+1
echo if a>0: a else: -1