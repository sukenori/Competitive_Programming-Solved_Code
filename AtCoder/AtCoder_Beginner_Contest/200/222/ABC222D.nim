include atcoder/header
let N=nextInt()
let A,B=newSeqWith(N,nextInt())
import atcoder/modint
type mint=modint998244353
import atcoder/fenwicktree
var C=FenwickTreeType(mint).init(3001)
for i in A[0]..B[0]: C.add(i,1)
for i in 1..<N:
  var nC=FenwickTreeType(mint).init(3001)
  for j in A[i]..B[i]: nC.add(j,C[0..j])
  C=nC
echo C[0..3000]