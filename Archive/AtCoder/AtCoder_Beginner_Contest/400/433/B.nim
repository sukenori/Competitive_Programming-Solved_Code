include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt())
for i in 0..<N:
  block b:
    for j in countdown(i-1,0):
      if A[j]>A[i]: echo j+1; break b
    echo -1