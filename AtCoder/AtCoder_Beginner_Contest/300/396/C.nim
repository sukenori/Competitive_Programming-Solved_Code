include atcoder/header
let
  N,M=nextInt()
  B=newSeqWith(N,nextInt()).sorted(Descending)
  W=newSeqWith(M,nextInt()).sorted(Descending)
var a,i,j=0
while i<N and j<M and W[j]>=0 and B[i]+W[j]>0: 
  a+=B[i]+W[j]; i+=1; j+=1
while i<N and B[i]>0: 
  a+=B[i]; i+=1
echo a