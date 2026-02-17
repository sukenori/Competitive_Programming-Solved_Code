include atcoder/extra/header/chaemon_header
let N,D=nextInt()
A:=Seq[N:nextInt()]
import atcoder/segtree
dp:=initSegTree[int](5*10^5+1,(a,b:int)=>max(a,b),()=>0)
for Ai in A:
  dp[Ai]=dp.prod(max(Ai-D,0)..min(5*10^5,Ai+D))+1
echo dp.all_prod