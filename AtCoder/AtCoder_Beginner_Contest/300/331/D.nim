include atcoder/extra/header/chaemon_header
let N,Q=nextInt()
P:=Seq[N:nextString().mapIt((it=='B').int)]
import atcoder/extra/dp/cumulative_sum_2d
sP:=P.initCumulativeSum2D
proc c(i,j:int):int=
  ii:=i+1; ij:=j+1
  result=(ii//N)*(ij//N)*sP[0..<N,0..<N]+(ii//N)*sP[0..<N,0..<ij%N]+(ij//N)*sP[0..<ii%N,0..<N]+sP[0..<ii%N,0..<ij%N]
for _ in 1..Q:
  let A,B,C,D=nextInt()
  echo c(C,D)-(if A>0:c(A-1,D) else:0)-(if B>0:c(C,B-1) else:0)+(if A>0 and B>0:c(A-1,B-1) else:0)