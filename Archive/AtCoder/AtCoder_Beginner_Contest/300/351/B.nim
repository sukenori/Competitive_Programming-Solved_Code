include atcoder/header
let N=nextInt()
let A=newSeqWith(N,nextString())
let B=newSeqWith(N,nextString())
for i in 0..<N:
  for j in 0..<N:
    if A[i][j]!=B[i][j]: echo i+1," ",j+1; quit()