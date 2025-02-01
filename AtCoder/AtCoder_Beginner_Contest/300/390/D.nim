include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt())
var s:HashSet[int]
proc r(i:int,v:seq[int])=
  if i==N: s.incl(v.foldl(a xor b)); return
  for j in 0..<v.len:
    var vi=v; vi[j]+=A[i]; r(i+1,vi)
  var vi=v; vi.add(A[i]); r(i+1,vi)
r(0,newSeq[int]())
var a:HashSet[int]
echo s.len