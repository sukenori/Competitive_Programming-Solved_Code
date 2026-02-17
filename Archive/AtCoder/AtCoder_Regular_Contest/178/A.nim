include atcoder/header
let N,M=nextInt()
let A=newSeqWith(M,nextInt()).sorted
var a=(1..N).toSeq
for Ai in A:
  if Ai==1 or Ai==N: echo -1; quit()
  swap(a[Ai-1],a[Ai])
echo a.join(" ")