include atcoder/header
let
  N,M=nextInt()
  A=newSeqWith(M,nextInt()).toHashSet
var a:seq[int]
for i in 1..N:
  if i notin A: a.add(i)
echo a.len
echo a.toSeq.sorted.join(" ")