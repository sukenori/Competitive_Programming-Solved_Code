include atcoder/header
let N,K=nextInt()
let A=newSeqWith(N,nextInt())
var j,s,a=0
for i in 0..<N:
  while j<N and s<K: s+=A[j]; j+=1
  if s>=K: a+=N-(j-1)
  s-=A[i]
echo a