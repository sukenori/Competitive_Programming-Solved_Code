include atcoder/header
let N=nextInt()
var p=newSeqWith(N,nextInt()-1)
var a=0
for i in 0..<N:
  if p[i]==i:
    a+=1
    if i<N-1: p[i+1]=p[i]
echo a