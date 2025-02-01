include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt()).sorted(Descending)
  B=newSeqWith(N-1,nextInt()).sorted(Descending)
var a=0
for i in 0..<N:
  if i==N-1 and a==0: a=A[^1]; break
  if A[i]>B[i-(a>0).int]:
    if a==0: a=A[i]
    else: a= -1; break
echo a