include atcoder/header
let N,M=nextInt()
var m=newSeq[int](N)
for i in 0..<M:
  let A,B=nextInt()
  m[(A+B) mod N]+=1
var a=M*(M-1) div 2
for i in 0..<N: a-=m[i]*(m[i]-1) div 2
echo a