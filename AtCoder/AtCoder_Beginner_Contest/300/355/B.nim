include atcoder/header
let N,M=nextInt()
let A=newSeqWith(N,nextInt())
let B=newSeqWith(M,nextInt())
let C=(A&B).sorted
for i in 1..<N+M:
  if C[i-1] in A and C[i] in A: echo "Yes"; quit()
echo "No"