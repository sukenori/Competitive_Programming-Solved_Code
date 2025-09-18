include atcoder/header
let T=nextInt()
for _ in 1..T:
  let nA,nB,nC=nextInt()
  var
    l=0
    r=10^9+1
  while r-l>1:
    let m=(l+r) div 2
    if m<=nA and m<=nC and m<=nA-m+nB+nC-m: l=m
    else: r=m
  echo l