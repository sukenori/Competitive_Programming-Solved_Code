include atcoder/header
let N=nextInt()
let A=newSeqWith(N,nextInt())
echo if A.mapIt(it-A[0])[1..^1].gcd!=1: 1 else: 2