include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt()).toCountTable
  v=A.values.toSeq
  c=v.cumsummed
echo (1..<v.len-1).toSeq.mapIt(c[it-1]*v[it]*(N-c[it])).sum