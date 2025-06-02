include atcoder/header
let N,M=nextInt()
var A=newSeqWith(N,nextInt())
var a=0; while A.toHashSet.len==M: discard A.pop; a+=1
echo a