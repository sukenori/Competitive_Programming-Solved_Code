include atcoder/header
let N=nextInt()
let A=newSeqWith(N,nextInt()).sorted
var
  r=N-1
  a=0
for l in 0..<N-1:
  while l<r and A[l]+A[r]>=10^8:
    a+=r-l
    r-=1
echo A.sum*(N-1)-10^8*a