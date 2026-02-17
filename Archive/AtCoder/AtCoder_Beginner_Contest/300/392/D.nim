include atcoder/header
let N=nextInt()
var
  K=newSeq[int](N)
  A=newSeq[CountTable[int]](N)
for i in 0..<N:
  K[i]=nextInt()
  A[i]=newSeqWith(K[i],nextInt()).toCountTable
var a=0.0
for i in 0..<N-1:
  for j in i+1..<N:
    var aj=0.0
    for Ak in A[i].keys:
      aj+=(A[i][Ak]*A[j][Ak]).float/(K[i]*K[j]).float
    a.max=aj
echo a