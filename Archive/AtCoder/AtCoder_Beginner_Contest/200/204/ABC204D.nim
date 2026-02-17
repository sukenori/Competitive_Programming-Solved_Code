include atcoder/header
let N=nextInt()
let T=newSeqWith(N,nextInt())
var o=[0].toHashSet
for Ti in T:
  var no=o
  for oi in o: no.incl(oi+Ti)
  o=no
let s=o.toSeq
let i=s.mapIt(abs(T.sum-it-it)).minIndex
echo max(s[i],T.sum-s[i])