include atcoder/header
let N,M=nextInt()
let A=newSeqWith(N+1,nextInt())
let C=newSeqWith(N+M+1,nextInt())
var B=C[^(M+1)..^1]
for i in countdown(M+N,M+N-M):
  for j in i-N+1..min(i-N+1+(N-1),M):
    B[i-N]-=A[i-j]*B[j]
  B[i-N]=B[i-N] div A[N]
echo B.join(" ")