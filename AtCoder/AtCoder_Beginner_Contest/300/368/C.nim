include atcoder/header
let
  N=nextInt()
  H=newSeqWith(N,nextInt())
var T=0
for Hi in H:
  var
    lH=Hi
    d=Hi div 5
  lH-=d*5; T+=d*3
  while lH>0:
    T+=1; lH-=(if T mod 3==0: 3 else: 1)
echo T