include atcoder/header
let N,K=nextInt()
var A=newSeqWith(N,nextInt())
echo (A[N-K..^1]&A[0..<N-K]).join(" ")