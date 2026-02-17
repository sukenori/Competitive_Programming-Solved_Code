include atcoder/header
let
  N,R=nextInt()
  L=newSeqWith(N,nextInt())
var
  l=0
  r=N-1
while l<R and L[l]==1: l+=1
while R<=r and L[r]==1: r-=1
echo r-l+1+L[l..r].sum