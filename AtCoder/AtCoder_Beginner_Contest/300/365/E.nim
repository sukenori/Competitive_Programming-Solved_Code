include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt())
  n=(10^8).float.log2.ceil.int
var
  Ai=newSeqWith(n+1,newSeq[int](2))
  a=0
for i in 0..<N:
  for j in 0..n:
    let Aj=A[i] shr j and 1
    if Aj==1: swap(Ai[j][0],Ai[j][1])
    a+=Ai[j][1] shl j
    if Aj==0: Ai[j][0]+=1
    else: Ai[j][1]+=1
echo a