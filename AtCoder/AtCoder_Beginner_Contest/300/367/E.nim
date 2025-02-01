include atcoder/header
let
  N,K=nextInt()
  X=newSeqWith(N,nextInt()-1)
  A=newSeqWith(N,nextInt())
  d=X.toCountTable.pairs.toSeq.filterIt(it[1]>1).mapIt(it[0]).toHashSet
var l=newSeq[(seq[int],bool)]()
for i in 0..<N:
  if X[i] in d:
    var
      li= @[i]
      j=i
    while true:
      if j in li: l.add((li,true)); break
      if j notin X: l.add((li,false)); break
      li.add(j); j=X[j]
echo l