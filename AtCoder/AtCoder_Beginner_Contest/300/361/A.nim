include atcoder/header
let N,K,X=nextInt()
var A=newSeqWith(N,nextInt())
A.insert(@[X],K)
echo A.join(" ")