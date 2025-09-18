include atcoder/header
let
  N=nextInt()
  L=newSeqWith(N,nextInt())
var
  l=0
  r=N
while l<N and L[l]==0: l+=1
while 0<r and L[r-1]==0: r-=1
echo max(0,r-l-1)