include atcoder/header
let N=nextInt()
var A:Table[int,int]
for i in 1..N: A[nextInt()]=i
echo A[A.keys.toSeq.sorted(Descending)[1]]