include atcoder/header
let N,A=nextInt()
let T=newSeqWith(N,nextInt())
var a=T[0]+A; echo a
for i in 1..<N: a=max(T[i],a)+A; echo a