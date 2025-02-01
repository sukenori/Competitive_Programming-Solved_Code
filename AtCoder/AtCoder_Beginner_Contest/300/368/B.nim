include atcoder/header
let N=nextInt()
var
  A=newSeqWith(N,nextInt())
  a=0
while A.count(0)<N-1:
  A.sort(Descending)
  A[0]-=1; A[1]-=1
  a+=1
echo a