include atcoder/header
let
  X,N=nextInt()
  W=newSeqWith(N,nextInt())
let Q=nextInt()
var
  d=newSeq[bool](N)
  w=0
for _ in 1..Q:
  let P=nextInt()-1
  if not d[P]: w+=W[P]; d[P]=true
  else: w-=W[P]; d[P]=false
  echo X+w