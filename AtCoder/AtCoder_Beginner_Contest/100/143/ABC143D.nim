include atcoder/header
let N=nextInt()
let L=newSeqWith(N,nextInt()).sorted
var a=0
for i in 0..<N-2:
  for j in i+1..<N-1:
    a+=L.lowerBound(L[i]+L[j])-1-j
echo a