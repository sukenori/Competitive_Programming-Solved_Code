include atcoder/header
let N=nextInt()
let p=newSeqWith(N,nextInt())
var a=newSeqWith(N,0)
for i,pi in p:
  for j in -1..1: a[(N+pi-i+j) mod N]+=1
echo a.max