include atcoder/header
let N=nextInt()
var a=newSeqWith(100,newSeq[int](100))
for _ in 1..N:
  let A,B,C,D=nextInt()
  for i in A..<B:
    for j in C..<D:
      a[i][j]=1
echo a.mapIt(sum(it)).sum