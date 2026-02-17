include atcoder/header
let N=nextInt()
let A=newSeqWith(N,nextInt())
echo (0..<N-1).mapIt(A[it]*A[it+1]).join(" ")