include atcoder/header
let N,M,K=nextInt()
let L=lcm(N,M)
var
  l=0
  r=int.inf
while r-l>1:
  let m=(l+r) div 2
  let a=m div N+m div M-(m div L)*2
  if a<K: l=m
  else: r=m
echo r