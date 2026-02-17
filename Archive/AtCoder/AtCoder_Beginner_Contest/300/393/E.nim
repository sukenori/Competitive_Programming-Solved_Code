include atcoder/header
let
  N,K=nextInt()
  A=newSeqWith(N,nextInt())
  m=A.max
  c=A.toCountTable
var t=newSeq[int](m+1)
for i in 1..m:
  var j=i; while j<=m: t[i]+=c[j]; j+=i
var a=newSeqWith(m+1,1)
for i in 1..m:
  if t[i]>=K:
    var j=i; while j<=m: a[j].max=i; j+=i
for i in 0..<N: echo a[A[i]]