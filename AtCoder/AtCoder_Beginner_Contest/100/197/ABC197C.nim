include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt())
var a=int.inf
for i in 0..<1 shl (N-1):
  var ai,aj=0
  for j in 0..<N:
    aj=aj or A[j]
    if (i shr j and 1)==1 or j==N-1:
      ai=ai xor aj; aj=0
  a.min=ai
echo a