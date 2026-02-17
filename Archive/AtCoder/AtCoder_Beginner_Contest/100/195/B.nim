include atcoder/header
let
  A,B=nextInt()
  W=nextInt()*1000
  min=ceilDiv(W,B)
  max=floorDiv(W,A)
if max<min: echo "UNSATISFIABLE"
else: echo min," ",max