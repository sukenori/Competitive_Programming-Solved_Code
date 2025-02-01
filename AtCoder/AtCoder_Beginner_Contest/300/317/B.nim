include atcoder/header
let
  N=nextInt()
  A=N.newSeqWith(nextInt())
echo ((A.min..A.max).toSeq.toHashSet-A.toHashSet).toSeq[0]