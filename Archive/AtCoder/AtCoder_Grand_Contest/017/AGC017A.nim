include atcoder/header
let N,P=nextInt()
let A=newSeqWith(N,nextInt())
echo if A.allIt(it mod 2==0): (1-P)*2^N else: 2^(N-1)