include atcoder/header
let
  N,M=nextInt()
  A=newSeqWith(M,nextInt())
  S=newSeqWith(N,nextString())
var
  p=newSeq[int](N)
  n=newSeq[seq[int]](N)
  m=0
for i in 0..<N:
  for j in 0..<M:
    if S[i][j]=='o': p[i]+=A[j]
    else: n[i].add(A[j])
  p[i]+=i+1
  m.max=p[i]
for i in 0..<N:
  n[i].sort(Descending)
  var j=0
  while p[i]<m:
    p[i]+=n[i][j]
    j+=1
  echo j