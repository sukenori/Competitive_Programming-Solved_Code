include atcoder/header
let
  N=nextInt()
  a=newSeqWith(N,nextInt()-1)
var c=0
for i in 0..<N:
  if a[a[i]]==i: c+=1
echo c div 2