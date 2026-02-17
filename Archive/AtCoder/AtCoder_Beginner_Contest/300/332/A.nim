include atcoder/extra/header/chaemon_header
let N,S,K=nextInt()
a:=0
for _ in 1..N:
  let P,Q=nextInt()
  a+=P*Q
if a<S: a+=K
echo a