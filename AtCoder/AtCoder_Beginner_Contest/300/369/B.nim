include atcoder/header
let N=nextInt()
var lL,lR,a=0
for i in 1..N:
  let
    A=nextInt()
    S=nextString()
  if S=="L":
    if lL!=0: a+=abs(A-lL)
    lL=A
  else:
    if lR!=0: a+=abs(A-lR)
    lR=A
echo a