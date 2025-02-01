include atcoder/header
let N,W=nextInt()
var w=newSeqWith(2*10^5+1,0)
for _ in 1..N:
  let S,T,P=nextInt()
  w[S]+=P; w[T]-=P
echo if w.cumsummed.max<=W: "Yes" else: "No" 