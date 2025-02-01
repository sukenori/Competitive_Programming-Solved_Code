include atcoder/header
let
  N=nextInt()
  K=newSeqWith(N,nextInt())
var a=int.inf
for i in 0..<1 shl N:
  var A,B=0
  for j in 0..<N:
    if (i shr j and 1)==0: A+=K[j]
    else: B+=K[j]
  a.min=max(A,B)
echo a  