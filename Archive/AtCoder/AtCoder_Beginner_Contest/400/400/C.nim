include atcoder/header
let N=nextInt()
var a=0
for i in 1..2:
  var
    l=0
    r=10^9
  while r-l>1:
    let m=(l+r) div 2
    if 2^i*m^2<=N: l=m
    else: r=m
  a+=l
echo a