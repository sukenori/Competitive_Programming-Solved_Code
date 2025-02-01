include atcoder/header
let N=nextInt()
let A=newSeqWith(N,nextInt()).sorted
var a=A.sum*(N-1)
for i in 0..<N:
  a-=10^8*(N-A.lowerBound(10^8-A[i])-(if A[i]>=10^8 div 2: 1 else: 0)) div 2
echo a