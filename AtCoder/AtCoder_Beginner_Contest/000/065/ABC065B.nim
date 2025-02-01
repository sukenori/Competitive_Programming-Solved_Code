include atcoder/header
let
  N=nextInt()
  a=newSeqWith(N,nextInt()-1)
var c=0
for i in 0..<N:
  if c==1: echo i; quit()
  else: c=a[c]
echo -1