include atcoder/header
let
  N,X=nextInt()
  A=newSeqWith(N-1,nextInt()).sorted
if A[0..<N-2].sum>=X: echo 0; quit()
elif A[1..<N-1].sum>=X: echo X-A[1..<N-2].sum; quit()
else: echo -1