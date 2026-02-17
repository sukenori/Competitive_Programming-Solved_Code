include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt())
for i in 1..<N-1:
  if A[i-1]*A[i+1]!=A[i]^2: echo "No"; quit()
echo "Yes"