include atcoder/header
let
  N=nextInt()
  A= @[0]&newSeqWith(N,nextInt())
var j,a=0
for i in 1..N:
  if i==1 or i<j:
    a+=1
    j.max=i+A[i]
  else: break
echo a