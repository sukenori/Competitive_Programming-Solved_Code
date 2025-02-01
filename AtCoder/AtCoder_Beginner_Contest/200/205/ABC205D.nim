include atcoder/extra/header/chaemon_header
let N,Q=nextInt()
A:=Seq[N:nextInt()]
import atcoder/extra/other/binary_search
for _ in 1..Q:
  K:=nextInt()
  echo minLeft((x:int)=>x-A.upperBound(x)>=K,1..10^18+10^5)