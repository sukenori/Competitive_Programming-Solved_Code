include atcoder/header
let N,A,B=nextInt()
let D=newSeqWith(N,nextInt())
var m=D.mapIt(it mod (A+B)).toHashSet.toSeq.sorted
m=m&(A+B+m[0])
for i in 1..<m.len:
  if m[i]-m[i-1]-1>=B: echo "Yes"; quit()
echo "No"