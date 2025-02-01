include atcoder/header
let N=nextInt()
var A=newSeqWith(N+1,newSeq[int](N+1))
for i in 1..N:
  for j in 1..i:
    A[i][j]=nextInt()
var a=1
for i in 1..N:
  if a>=i: a=A[a][i]
  else: a=A[i][a]
echo a