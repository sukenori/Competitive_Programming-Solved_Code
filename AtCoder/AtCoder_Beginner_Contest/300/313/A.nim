include atcoder/extra/header/chaemon_header
let
  N=nextInt()
  P=Seq[N:nextInt()]
var m=0; for Pi in P[1..<N]: m.max=Pi
echo max(m+1-P[0],0)