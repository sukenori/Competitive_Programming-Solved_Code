include atcoder/header
let N,K=nextInt()
let A=newSeqWith(N,nextInt())
echo A.filterIt(it mod K==0).mapIt(it div K).join(" ")