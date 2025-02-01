include atcoder/header
let N,L,R=nextInt()
var a=(1..N).toSeq
a.reverse(L-1,R-1)
echo a.join(" ")