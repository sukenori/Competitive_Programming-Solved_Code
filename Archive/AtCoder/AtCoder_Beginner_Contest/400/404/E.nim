include atcoder/header
import deques
let
  N=nextInt()
  C,A=newSeqWith(N-1,nextInt())
var
  d=(0..<N-1).toSeq.filterIt(A[it]>0).mapIt(it+1).toDeque
  r=d.popLast
  a=0
while r>0:
  let l=r-C[r-1]
  if d.len>0 and l<=d.peekLast: r=d.popLast
  elif l<=0: r=0
  else:
    var nl,nr=r
    for i in l..r-1:
      if i-C[i-1]<nl: nl=i-C[i-1]; nr=i
    r=nr
  a+=1
echo a