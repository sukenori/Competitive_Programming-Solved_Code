include atcoder/header
let
  N,M,K=nextInt()
  H=newSeqWith(N,nextInt()).sorted
  B=newSeqWith(M,nextInt()).sorted
var
  b=0
  a=0
for h in 0..<N:
  while b<M and H[h]>B[b]: b+=1
  if b<M and H[h]<=B[b]: b+=1; a+=1
echo if a>=K: "Yes" else: "No"