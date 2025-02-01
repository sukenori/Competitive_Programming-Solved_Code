include atcoder/header
let N=nextInt()
let a=newSeqWith(N,nextInt())
let s=a.foldl(a xor b)
echo a.mapIt(s xor it).join(" ")