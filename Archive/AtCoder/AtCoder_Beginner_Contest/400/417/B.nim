include atcoder/header
let
  N,M=nextInt()
  A=newSeqWith(N,nextInt()).toCountTable
  B=newSeqWith(M,nextInt()).toCountTable
var a:seq[int]
for Ai in A.keys.toSeq.sorted:
  if Ai notin B.keys.toSeq: a.add(Ai.repeat(A[Ai]))
  elif A[Ai]>B[Ai]: a.add(Ai.repeat(A[Ai]-B[Ai]))
echo a.join(" ")