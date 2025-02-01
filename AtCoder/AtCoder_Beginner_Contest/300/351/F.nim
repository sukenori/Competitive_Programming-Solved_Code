include atcoder/header
let N=nextInt()
let A=newSeqWith(N,nextInt())
let c=A.toHashSet.toSeq.sorted
let n=c.len
import atcoder/fenwicktree
var fc,fs=FenwickTreeType(int).init(n)
var a=0
for i in countdown(N-1,0):
  let j=c.lowerBound(A[i])
  a+=fs[j..<n]-fc[j..<n]*A[i]
  fc.add(j,1)
  fs.add(j,A[i])
echo a