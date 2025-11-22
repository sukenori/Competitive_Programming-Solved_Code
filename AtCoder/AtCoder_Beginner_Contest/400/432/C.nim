include atcoder/header
let
  N,X,Y=nextInt()
  A=newSeqWith(N,nextInt())
  w=A.min*Y
  d=Y-X
var a=0
for i in 0..<N:
  if w>=A[i]*X and (w-A[i]*X) mod d==0: a+=(w-A[i]*X) div d
  else: echo -1; quit()
echo a